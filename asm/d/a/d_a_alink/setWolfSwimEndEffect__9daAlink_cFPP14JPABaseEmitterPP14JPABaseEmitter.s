lbl_80123BF0:
/* 80123BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80123BF4  7C 08 02 A6 */	mflr r0
/* 80123BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80123BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80123C00  48 23 E5 D5 */	bl _savegpr_27
/* 80123C04  7C 7B 1B 78 */	mr r27, r3
/* 80123C08  7C 9C 23 78 */	mr r28, r4
/* 80123C0C  7C BD 2B 78 */	mr r29, r5
/* 80123C10  AB C3 30 0E */	lha r30, 0x300e(r3)
/* 80123C14  2C 1E 00 03 */	cmpwi r30, 3
/* 80123C18  40 80 00 0C */	bge lbl_80123C24
/* 80123C1C  2C 1E 00 00 */	cmpwi r30, 0
/* 80123C20  40 80 00 08 */	bge lbl_80123C28
lbl_80123C24:
/* 80123C24  3B C0 00 01 */	li r30, 1
lbl_80123C28:
/* 80123C28  7F 63 DB 78 */	mr r3, r27
/* 80123C2C  38 9B 32 CC */	addi r4, r27, 0x32cc
/* 80123C30  57 DF 08 3C */	slwi r31, r30, 1
/* 80123C34  38 A2 96 D8 */	la r5, name0(r2) /* 804530D8-_SDA2_BASE_ */
/* 80123C38  7C A5 FA 2E */	lhzx r5, r5, r31
/* 80123C3C  38 DB 37 C8 */	addi r6, r27, 0x37c8
/* 80123C40  38 FB 04 E4 */	addi r7, r27, 0x4e4
/* 80123C44  4B FF CA 81 */	bl setEmitterColor__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123C48  90 7C 00 00 */	stw r3, 0(r28)
/* 80123C4C  2C 1E 00 00 */	cmpwi r30, 0
/* 80123C50  41 82 00 24 */	beq lbl_80123C74
/* 80123C54  7F 63 DB 78 */	mr r3, r27
/* 80123C58  38 9B 31 BC */	addi r4, r27, 0x31bc
/* 80123C5C  38 A2 96 E0 */	la r5, name1(r2) /* 804530E0-_SDA2_BASE_ */
/* 80123C60  7C A5 FA 2E */	lhzx r5, r5, r31
/* 80123C64  38 DB 37 C8 */	addi r6, r27, 0x37c8
/* 80123C68  38 FB 04 E4 */	addi r7, r27, 0x4e4
/* 80123C6C  4B FF CA 59 */	bl setEmitterColor__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123C70  90 7D 00 00 */	stw r3, 0(r29)
lbl_80123C74:
/* 80123C74  39 61 00 20 */	addi r11, r1, 0x20
/* 80123C78  48 23 E5 A9 */	bl _restgpr_27
/* 80123C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80123C80  7C 08 03 A6 */	mtlr r0
/* 80123C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80123C88  4E 80 00 20 */	blr 
