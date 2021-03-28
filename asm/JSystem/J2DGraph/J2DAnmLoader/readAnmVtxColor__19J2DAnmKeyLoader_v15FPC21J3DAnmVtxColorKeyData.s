lbl_8030995C:
/* 8030995C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309960  7C 08 02 A6 */	mflr r0
/* 80309964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309968  7C 85 23 78 */	mr r5, r4
/* 8030996C  80 83 00 04 */	lwz r4, 4(r3)
/* 80309970  48 00 00 15 */	bl setAnmVtxColor__19J2DAnmKeyLoader_v15FP17J2DAnmVtxColorKeyPC21J3DAnmVtxColorKeyData
/* 80309974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309978  7C 08 03 A6 */	mtlr r0
/* 8030997C  38 21 00 10 */	addi r1, r1, 0x10
/* 80309980  4E 80 00 20 */	blr 
