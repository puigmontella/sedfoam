#
# Import section
#
import subprocess
import sys
import numpy as np
import fluidfoam
from pylab import figure, subplot, axis, xlabel, ylabel, show, savefig, plot
from pylab import title, matplotlib
import matplotlib.gridspec as gridspec
import matplotlib as mpl
import matplotlib.pyplot as plt
#
# Change fontsize
#
matplotlib.rcParams.update({'font.size': 20})
mpl.rcParams['lines.linewidth'] = 3
mpl.rcParams['lines.markersize'] = 10

#
# Change subplot sizes
#
gs = gridspec.GridSpec(1, 3)
gs.update(left=0.1, right=0.95, top=0.95,
          bottom=0.075, wspace=0.825, hspace=0.125)
#
# Figure size
#
figwidth = 24
figheight = 6
figheight2 = 12

#########################################
#
# Loading experimental results
#
#execfile('DATA/exp_lmsgc.py')
exec(open("DATA/exp_lmsgc.py").read())
#########################################
# Loading OpenFoam results
#
#
#
#
case = '1DSedim'
basepath = '../'
sol = basepath + case + '/'

Nx = 1
Ny = 120
Nz = 1

eps_file = sol + case + '.eps'

#
# Reading SedFoam results
#
try:
    proc = subprocess.Popen(
        ['foamListTimes', '-case', sol], stdout=subprocess.PIPE)
except:
    print("foamListTimes : command not found")
    print("Do you have load OpenFoam environement?")
    sys.exit(0)
output = proc.stdout.read()
#tread = list(output.split('\n'))
tread = output.decode().rstrip().split('\n')


del tread[-1]
Nt = len(tread)
time = np.zeros(Nt)
X, Y, Z = fluidfoam.readmesh(sol)
alphat = np.zeros((Ny, Nt))

k = -1
for t in tread:
    print("Reading time: %s s" % t)
    k = k + 1

    alphat[:, k] = fluidfoam.readscalar(sol, t + '/', 'alpha.a')
    time[k] = float(t)


#
# parameter
#
zmin = 0.
zmax = np.max(Y)

tmax = 1800.
tadj = 172.




try:
    proc = subprocess.Popen(
        ['foamListTimes', '-latestTime', '-case', sol], stdout=subprocess.PIPE)
except:
    print("foamListTimes : command not found")
    print("Do you have load OpenFoam environement?")
    sys.exit(0)
output = proc.stdout.read()
tread = output.decode().rstrip().split('\n')[0]

tread='44'

k=100
kk=200
kkk=300
for i in range(20,80):
	tread=str(i)
	kk=kk+1
	alphat= fluidfoam.readscalar(sol,tread+'/', 'alpha.a')
	pff= fluidfoam.readscalar(sol,tread+'/', 'pff')
		
	ww = fluidfoam.readvector(sol, tread+'/', 'W')

	tauSw = fluidfoam.readvector(sol, tread+'/', 'tauSw')
	tauFw = fluidfoam.readvector(sol, tread+'/', 'tauFw')
	tauSU = fluidfoam.readvector(sol, tread+'/', 'tauSU')
	tauFu = fluidfoam.readvector(sol, tread+'/', 'tauFu')
	pmixt = fluidfoam.readvector(sol, tread+'/', 'pmixt')
	pSolid = fluidfoam.readvector(sol, tread+'/', 'pSolid')
	Dragterm = fluidfoam.readvector(sol, tread+'/', 'Dragterm')

	
	figure(num=kk, figsize=(figwidth, figheight2),
		   dpi=60, facecolor='w', edgecolor='w')
		   
	ax1 = subplot(gs[0, 0])
	l11, = ax1.plot(pff[:], Y[:], '-r')
	ax1.set_ylabel('y (m)')
	ax1.set_xlabel(r'pff (pa)')
	ax1.set_xlim(0,  3)
	ax1.set_ylim(0, 0.007)

	ax2 = subplot(gs[0, 1])
	l21, = ax2.plot(ww[1,:], Y[:], '-r')
	ax2.set_xlabel('W ($m/s$)')
	ax2.set_xlim(-1.4e-5, 1e-7)
	ax2.set_ylim(0, 0.007)


	
	ax3 = subplot(gs[0, 2])
	l31, = 	ax3.plot(tauSw[1,:] , Y[:] , 'b',label='tauSw')
	l32, = 	ax3.plot(tauFw[1,:] , Y[:] , 'k',label='tauFw')
	l33, = 	ax3.plot(tauSU[1,:] , Y[:] , 'r',label='tauSU')
	l34, = 	ax3.plot(tauFu[1,:] , Y[:] , 'g',label='tauFu')
	l35, = 	ax3.plot(pmixt[1,:] , Y[:] , 'gray',label='pmixt')
	l36, = 	ax3.plot(pSolid[1,:] , Y[:], 'm',label='pSolid')
	l37, = 	ax3.plot(Dragterm [1,:], Y[:] , 'orange',label='Dragterm')
	ax3.set_xlabel('contributions')
	ax3.set_xlim(0,  2.3)
	ax3.set_ylim(0, 0.007)

	savefig('Figures/contriSedim/res4_tutoSed_t%s.png'%tread, facecolor='w', edgecolor='w', format='png')
	plt.figure().clear()
	plt.close()
	plt.cla()
	plt.clf()
	
# show(block=False)

# show(block=False)
# # Fix Python 2.x.
# try: input = raw_input
# except NameError: pass
# tto = input("Hit a key to close the figure")
