//Return the list of patchFieldTypes for W derived from U
Foam::wordList WPatchFieldTypes
(
    U.boundaryField().size(),
    calculatedFvPatchScalarField::typeName
);

forAll(U.boundaryField(), i)
{
    if
    (
        isA<fixedValueFvPatchVectorField>(U.boundaryField()[i])
     || isA<slipFvPatchVectorField>(U.boundaryField()[i])
     || isA<partialSlipFvPatchVectorField>(U.boundaryField()[i])
    )
    {
        WPatchFieldTypes[i] = fixedValueFvPatchVectorField::typeName;
    }
}

//Relative velocity between water and sediment: W_sw = v_s - v_w
volVectorField W
(
    IOobject
    (
        "W",
        runTime.timeName(),
        mesh,
        IOobject::READ_IF_PRESENT, //Allow overriding of WPatchFieldTypes for cases requiring special treatment of W BCs.
        IOobject::AUTO_WRITE
    ),
    mesh,
	dimensionedVector("W", dimVelocity, Zero),
	WPatchFieldTypes
);
