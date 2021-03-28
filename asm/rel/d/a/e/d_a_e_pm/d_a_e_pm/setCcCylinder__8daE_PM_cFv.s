lbl_807424C0:
/* 807424C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807424C4  7C 08 02 A6 */	mflr r0
/* 807424C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807424CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807424D0  7C 7F 1B 78 */	mr r31, r3
/* 807424D4  38 7F 0B 3C */	addi r3, r31, 0xb3c
/* 807424D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807424DC  4B B2 CD 00 */	b SetC__8cM3dGCylFRC4cXyz
/* 807424E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807424E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807424E8  38 63 23 3C */	addi r3, r3, 0x233c
/* 807424EC  38 9F 0A 18 */	addi r4, r31, 0xa18
/* 807424F0  4B B2 26 B8 */	b Set__4cCcSFP8cCcD_Obj
/* 807424F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807424F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807424FC  7C 08 03 A6 */	mtlr r0
/* 80742500  38 21 00 10 */	addi r1, r1, 0x10
/* 80742504  4E 80 00 20 */	blr 
