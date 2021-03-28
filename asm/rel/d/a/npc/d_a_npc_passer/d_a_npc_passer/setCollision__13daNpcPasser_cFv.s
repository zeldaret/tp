lbl_80AA48D8:
/* 80AA48D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA48DC  7C 08 02 A6 */	mflr r0
/* 80AA48E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA48E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA48E8  7C 7F 1B 78 */	mr r31, r3
/* 80AA48EC  38 7F 09 B0 */	addi r3, r31, 0x9b0
/* 80AA48F0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AA48F4  4B 7C A8 E8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80AA48F8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AA48FC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA4900  40 82 00 18 */	bne lbl_80AA4918
/* 80AA4904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AA4908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AA490C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AA4910  38 9F 08 8C */	addi r4, r31, 0x88c
/* 80AA4914  4B 7C 02 94 */	b Set__4cCcSFP8cCcD_Obj
lbl_80AA4918:
/* 80AA4918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA491C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA4920  7C 08 03 A6 */	mtlr r0
/* 80AA4924  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA4928  4E 80 00 20 */	blr 
