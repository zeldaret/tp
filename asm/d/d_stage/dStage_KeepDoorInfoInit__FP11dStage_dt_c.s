lbl_80023F50:
/* 80023F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023F54  7C 08 02 A6 */	mflr r0
/* 80023F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023F5C  4B FF FF A5 */	bl dStage_isBossStage__FP11dStage_dt_c
/* 80023F60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80023F64  40 82 00 10 */	bne lbl_80023F74
/* 80023F68  38 00 00 00 */	li r0, 0
/* 80023F6C  3C 60 80 3F */	lis r3, DoorInfo@ha /* 0x803F4E74@ha */
/* 80023F70  90 03 4E 74 */	stw r0, DoorInfo@l(r3)  /* 0x803F4E74@l */
lbl_80023F74:
/* 80023F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023F78  7C 08 03 A6 */	mtlr r0
/* 80023F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80023F80  4E 80 00 20 */	blr 
