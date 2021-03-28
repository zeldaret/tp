lbl_80017D38:
/* 80017D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017D3C  7C 08 02 A6 */	mflr r0
/* 80017D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80017D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80017D48  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80017D4C  1C 00 0A 94 */	mulli r0, r0, 0xa94
/* 80017D50  7F E3 02 14 */	add r31, r3, r0
/* 80017D54  7F E3 FB 78 */	mr r3, r31
/* 80017D58  38 80 0A 8C */	li r4, 0xa8c
/* 80017D5C  4B FF FF 59 */	bl mDoMemCdRWm_CalcCheckSumGameData__FPvUl
/* 80017D60  90 9F 0A 90 */	stw r4, 0xa90(r31)
/* 80017D64  90 7F 0A 8C */	stw r3, 0xa8c(r31)
/* 80017D68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80017D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80017D70  7C 08 03 A6 */	mtlr r0
/* 80017D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80017D78  4E 80 00 20 */	blr 
