lbl_80781850:
/* 80781850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80781854  7C 08 02 A6 */	mflr r0
/* 80781858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078185C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80781860  7C 7F 1B 78 */	mr r31, r3
/* 80781864  38 7F 0B 80 */	addi r3, r31, 0xb80
/* 80781868  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8078186C  4B AE D9 71 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80781870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80781874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80781878  38 63 23 3C */	addi r3, r3, 0x233c
/* 8078187C  38 9F 0A 5C */	addi r4, r31, 0xa5c
/* 80781880  4B AE 33 29 */	bl Set__4cCcSFP8cCcD_Obj
/* 80781884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80781888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078188C  7C 08 03 A6 */	mtlr r0
/* 80781890  38 21 00 10 */	addi r1, r1, 0x10
/* 80781894  4E 80 00 20 */	blr 
