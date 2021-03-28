lbl_800234BC:
/* 800234BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800234C0  7C 08 02 A6 */	mflr r0
/* 800234C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800234C8  39 61 00 20 */	addi r11, r1, 0x20
/* 800234CC  48 33 ED 09 */	bl _savegpr_27
/* 800234D0  7C 7B 1B 78 */	mr r27, r3
/* 800234D4  7C 9C 23 78 */	mr r28, r4
/* 800234D8  7C BD 2B 78 */	mr r29, r5
/* 800234DC  7C DE 33 78 */	mr r30, r6
/* 800234E0  7C FF 3B 78 */	mr r31, r7
/* 800234E4  7F A3 EB 78 */	mr r3, r29
/* 800234E8  7F C4 F3 78 */	mr r4, r30
/* 800234EC  7F E5 FB 78 */	mr r5, r31
/* 800234F0  4B FF FD C5 */	bl fpcPi_IsNormal__FUiUsUs
/* 800234F4  2C 03 00 00 */	cmpwi r3, 0
/* 800234F8  40 82 00 0C */	bne lbl_80023504
/* 800234FC  38 60 00 00 */	li r3, 0
/* 80023500  48 00 00 4C */	b lbl_8002354C
lbl_80023504:
/* 80023504  93 BB 00 30 */	stw r29, 0x30(r27)
/* 80023508  B3 DB 00 34 */	sth r30, 0x34(r27)
/* 8002350C  B3 FB 00 36 */	sth r31, 0x36(r27)
/* 80023510  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 80023514  90 1B 00 38 */	stw r0, 0x38(r27)
/* 80023518  A0 1B 00 34 */	lhz r0, 0x34(r27)
/* 8002351C  B0 1B 00 3C */	sth r0, 0x3c(r27)
/* 80023520  A0 1B 00 36 */	lhz r0, 0x36(r27)
/* 80023524  B0 1B 00 3E */	sth r0, 0x3e(r27)
/* 80023528  7F 63 DB 78 */	mr r3, r27
/* 8002352C  7F 84 E3 78 */	mr r4, r28
/* 80023530  48 24 35 05 */	bl cTg_Create__FP16create_tag_classPv
/* 80023534  38 7B 00 14 */	addi r3, r27, 0x14
/* 80023538  3C 80 80 02 */	lis r4, fpcPi_Delete__FP22process_priority_class@ha
/* 8002353C  38 84 32 68 */	addi r4, r4, fpcPi_Delete__FP22process_priority_class@l
/* 80023540  7F 65 DB 78 */	mr r5, r27
/* 80023544  48 00 02 B5 */	bl fpcMtdTg_Init__FP24process_method_tag_classPFPv_iPv
/* 80023548  38 60 00 01 */	li r3, 1
lbl_8002354C:
/* 8002354C  39 61 00 20 */	addi r11, r1, 0x20
/* 80023550  48 33 EC D1 */	bl _restgpr_27
/* 80023554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80023558  7C 08 03 A6 */	mtlr r0
/* 8002355C  38 21 00 20 */	addi r1, r1, 0x20
/* 80023560  4E 80 00 20 */	blr 
