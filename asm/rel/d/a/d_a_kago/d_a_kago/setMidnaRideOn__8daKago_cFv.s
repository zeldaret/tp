lbl_8084AB40:
/* 8084AB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084AB44  7C 08 02 A6 */	mflr r0
/* 8084AB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084AB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084AB50  7C 7F 1B 78 */	mr r31, r3
/* 8084AB54  48 00 9F 8D */	bl getMidnaActor__9daPy_py_cFv
/* 8084AB58  28 03 00 00 */	cmplwi r3, 0
/* 8084AB5C  41 82 00 1C */	beq lbl_8084AB78
/* 8084AB60  80 A3 08 90 */	lwz r5, 0x890(r3)
/* 8084AB64  3C 80 78 00 */	lis r4, 0x7800 /* 0x77FFFBFF@ha */
/* 8084AB68  38 04 FB FF */	addi r0, r4, 0xFBFF /* 0x77FFFBFF@l */
/* 8084AB6C  7C A0 00 38 */	and r0, r5, r0
/* 8084AB70  90 03 08 90 */	stw r0, 0x890(r3)
/* 8084AB74  93 E3 09 D0 */	stw r31, 0x9d0(r3)
lbl_8084AB78:
/* 8084AB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084AB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084AB80  7C 08 03 A6 */	mtlr r0
/* 8084AB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8084AB88  4E 80 00 20 */	blr 
