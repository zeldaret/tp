lbl_804F9FE0:
/* 804F9FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9FE4  7C 08 02 A6 */	mflr r0
/* 804F9FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F9FF0  7C 7F 1B 78 */	mr r31, r3
/* 804F9FF4  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 804F9FF8  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 804F9FFC  4B E2 B6 C8 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 804FA000  38 7F 00 74 */	addi r3, r31, 0x74
/* 804FA004  3C 80 80 50 */	lis r4, __ct__11J3DLightObjFv@ha
/* 804FA008  38 84 A0 34 */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 804FA00C  38 A0 00 00 */	li r5, 0
/* 804FA010  38 C0 00 74 */	li r6, 0x74
/* 804FA014  38 E0 00 06 */	li r7, 6
/* 804FA018  4B E6 7D 48 */	b __construct_array
/* 804FA01C  7F E3 FB 78 */	mr r3, r31
/* 804FA020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA028  7C 08 03 A6 */	mtlr r0
/* 804FA02C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA030  4E 80 00 20 */	blr 
