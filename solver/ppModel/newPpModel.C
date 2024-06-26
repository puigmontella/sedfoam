/*---------------------------------------------------------------------------*\
Copyright (C) 2015 Cyrille Bonamy, Julien Chauchat, Tian-Jian Hsu
                   and contributors

License
    This file is part of SedFOAM.

    SedFOAM is free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    SedFOAM is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
    for more details.

    You should have received a copy of the GNU General Public License
    along with SedFOAM.  If not, see <http://www.gnu.org/licenses/>.

\*---------------------------------------------------------------------------*/

#include "ppModel.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

Foam::autoPtr<Foam::ppModel> Foam::ppModel::New
(
    const dictionary& ppDict,
    const phaseModel& phasea,
    const phaseModel& phaseb
)
{
    word ppModelType
    (
        ppDict.get<word>("ppModel")
    );

    Info << "Selecting ppModel "
        << ppModelType << endl;

    auto cstrIter =
        dictionaryConstructorTablePtr_->find(ppModelType);

    if (cstrIter == dictionaryConstructorTablePtr_->end())
    {
        FatalError
            << "ppModel::New : " << endl
                << "    unknown ppModelType type "
                << ppModelType
                << ", constructor not in hash table" << endl << endl
                << "    Valid ppModel types are : " << endl;
        Info << dictionaryConstructorTablePtr_->sortedToc()
             << abort(FatalError);
    }

    return cstrIter()(ppDict, phasea, phaseb);
}


// ************************************************************************* //
