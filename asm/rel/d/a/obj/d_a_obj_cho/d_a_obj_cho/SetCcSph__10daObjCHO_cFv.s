lbl_80BCA3A0:
/* 80BCA3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA3A4  7C 08 02 A6 */	mflr r0
/* 80BCA3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCA3B0  7C 7F 1B 78 */	mr r31, r3
/* 80BCA3B4  38 7F 09 08 */	addi r3, r31, 0x908
/* 80BCA3B8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BCA3BC  4B 6A 52 8D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BCA3C0  38 7F 09 08 */	addi r3, r31, 0x908
/* 80BCA3C4  3C 80 80 BD */	lis r4, lit_3788@ha /* 0x80BCC5BC@ha */
/* 80BCA3C8  C0 24 C5 BC */	lfs f1, lit_3788@l(r4)  /* 0x80BCC5BC@l */
/* 80BCA3CC  4B 6A 53 3D */	bl SetR__8cM3dGSphFf
/* 80BCA3D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCA3D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCA3D8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BCA3DC  38 9F 07 E4 */	addi r4, r31, 0x7e4
/* 80BCA3E0  4B 69 A7 C9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BCA3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCA3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA3EC  7C 08 03 A6 */	mtlr r0
/* 80BCA3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA3F4  4E 80 00 20 */	blr 
