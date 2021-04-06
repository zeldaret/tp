lbl_8046B360:
/* 8046B360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B364  7C 08 02 A6 */	mflr r0
/* 8046B368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B36C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046B370  7C 7F 1B 78 */	mr r31, r3
/* 8046B374  A8 83 05 72 */	lha r4, 0x572(r3)
/* 8046B378  2C 04 00 00 */	cmpwi r4, 0
/* 8046B37C  41 82 00 30 */	beq lbl_8046B3AC
/* 8046B380  38 04 FF FF */	addi r0, r4, -1
/* 8046B384  B0 1F 05 72 */	sth r0, 0x572(r31)
/* 8046B388  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 8046B38C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8046B390  4B E0 42 B9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8046B394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046B398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046B39C  38 63 23 3C */	addi r3, r3, 0x233c
/* 8046B3A0  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 8046B3A4  4B DF 98 05 */	bl Set__4cCcSFP8cCcD_Obj
/* 8046B3A8  48 00 00 08 */	b lbl_8046B3B0
lbl_8046B3AC:
/* 8046B3AC  4B BB 43 9D */	bl fopKyM_Delete__FPv
lbl_8046B3B0:
/* 8046B3B0  38 60 00 01 */	li r3, 1
/* 8046B3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046B3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B3BC  7C 08 03 A6 */	mtlr r0
/* 8046B3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B3C4  4E 80 00 20 */	blr 
