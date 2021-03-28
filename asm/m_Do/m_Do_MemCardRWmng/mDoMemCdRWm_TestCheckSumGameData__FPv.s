lbl_80017CEC:
/* 80017CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017CF0  7C 08 02 A6 */	mflr r0
/* 80017CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80017CF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80017CFC  7C 7F 1B 78 */	mr r31, r3
/* 80017D00  38 80 0A 8C */	li r4, 0xa8c
/* 80017D04  4B FF FF B1 */	bl mDoMemCdRWm_CalcCheckSumGameData__FPvUl
/* 80017D08  80 1F 0A 8C */	lwz r0, 0xa8c(r31)
/* 80017D0C  80 BF 0A 90 */	lwz r5, 0xa90(r31)
/* 80017D10  7C 84 2A 78 */	xor r4, r4, r5
/* 80017D14  7C 60 02 78 */	xor r0, r3, r0
/* 80017D18  7C 80 03 78 */	or r0, r4, r0
/* 80017D1C  7C 00 00 34 */	cntlzw r0, r0
/* 80017D20  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80017D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80017D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80017D2C  7C 08 03 A6 */	mtlr r0
/* 80017D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80017D34  4E 80 00 20 */	blr 
