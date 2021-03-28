lbl_804FA034:
/* 804FA034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA038  7C 08 02 A6 */	mflr r0
/* 804FA03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA044  7C 7F 1B 78 */	mr r31, r3
/* 804FA048  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 804FA04C  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 804FA050  4B E2 B6 74 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 804FA054  7F E3 FB 78 */	mr r3, r31
/* 804FA058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA060  7C 08 03 A6 */	mtlr r0
/* 804FA064  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA068  4E 80 00 20 */	blr 
