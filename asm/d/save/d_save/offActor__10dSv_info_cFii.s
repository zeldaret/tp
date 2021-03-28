lbl_800356B4:
/* 800356B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800356B8  7C 08 02 A6 */	mflr r0
/* 800356BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800356C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800356C4  93 C1 00 08 */	stw r30, 8(r1)
/* 800356C8  7C 7E 1B 78 */	mr r30, r3
/* 800356CC  7C 9F 23 78 */	mr r31, r4
/* 800356D0  2C 1F FF FF */	cmpwi r31, -1
/* 800356D4  41 82 00 38 */	beq lbl_8003570C
/* 800356D8  3C 1F 00 00 */	addis r0, r31, 0
/* 800356DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 800356E0  41 82 00 2C */	beq lbl_8003570C
/* 800356E4  2C 05 FF FF */	cmpwi r5, -1
/* 800356E8  40 82 00 08 */	bne lbl_800356F0
/* 800356EC  48 00 00 20 */	b lbl_8003570C
lbl_800356F0:
/* 800356F0  7C A3 2B 78 */	mr r3, r5
/* 800356F4  4B FF 82 BD */	bl getZoneNo__20dStage_roomControl_cFi
/* 800356F8  54 63 28 34 */	slwi r3, r3, 5
/* 800356FC  38 63 09 C4 */	addi r3, r3, 0x9c4
/* 80035700  7C 7E 1A 14 */	add r3, r30, r3
/* 80035704  7F E4 FB 78 */	mr r4, r31
/* 80035708  4B FF F7 F1 */	bl off__15dSv_zoneActor_cFi
lbl_8003570C:
/* 8003570C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035710  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035718  7C 08 03 A6 */	mtlr r0
/* 8003571C  38 21 00 10 */	addi r1, r1, 0x10
/* 80035720  4E 80 00 20 */	blr 
