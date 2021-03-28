lbl_8007838C:
/* 8007838C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078390  7C 08 02 A6 */	mflr r0
/* 80078394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007839C  7C 7F 1B 78 */	mr r31, r3
/* 800783A0  4B FF F8 C9 */	bl __ct__11dBgS_LinChkFv
/* 800783A4  3C 60 80 3B */	lis r3, __vt__15dBgS_RopeLinChk@ha
/* 800783A8  38 63 B7 F0 */	addi r3, r3, __vt__15dBgS_RopeLinChk@l
/* 800783AC  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800783B0  38 03 00 0C */	addi r0, r3, 0xc
/* 800783B4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800783B8  38 03 00 18 */	addi r0, r3, 0x18
/* 800783BC  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800783C0  38 03 00 24 */	addi r0, r3, 0x24
/* 800783C4  90 1F 00 68 */	stw r0, 0x68(r31)
/* 800783C8  38 7F 00 58 */	addi r3, r31, 0x58
/* 800783CC  48 00 0B 15 */	bl SetRope__16dBgS_PolyPassChkFv
/* 800783D0  7F E3 FB 78 */	mr r3, r31
/* 800783D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800783D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800783DC  7C 08 03 A6 */	mtlr r0
/* 800783E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800783E4  4E 80 00 20 */	blr 
