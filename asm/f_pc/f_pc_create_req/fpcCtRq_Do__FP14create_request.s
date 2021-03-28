lbl_80020CC8:
/* 80020CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020CCC  7C 08 02 A6 */	mflr r0
/* 80020CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020CD8  7C 7F 1B 78 */	mr r31, r3
/* 80020CDC  38 A0 00 04 */	li r5, 4
/* 80020CE0  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80020CE4  28 04 00 00 */	cmplwi r4, 0
/* 80020CE8  41 82 00 2C */	beq lbl_80020D14
/* 80020CEC  81 84 00 00 */	lwz r12, 0(r4)
/* 80020CF0  28 0C 00 00 */	cmplwi r12, 0
/* 80020CF4  41 82 00 20 */	beq lbl_80020D14
/* 80020CF8  38 00 00 01 */	li r0, 1
/* 80020CFC  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80020D00  7D 89 03 A6 */	mtctr r12
/* 80020D04  4E 80 04 21 */	bctrl 
/* 80020D08  7C 65 1B 78 */	mr r5, r3
/* 80020D0C  38 00 00 00 */	li r0, 0
/* 80020D10  98 1F 00 14 */	stb r0, 0x14(r31)
lbl_80020D14:
/* 80020D14  2C 05 00 04 */	cmpwi r5, 4
/* 80020D18  41 82 00 20 */	beq lbl_80020D38
/* 80020D1C  40 80 00 10 */	bge lbl_80020D2C
/* 80020D20  2C 05 00 03 */	cmpwi r5, 3
/* 80020D24  40 80 00 3C */	bge lbl_80020D60
/* 80020D28  48 00 00 44 */	b lbl_80020D6C
lbl_80020D2C:
/* 80020D2C  2C 05 00 06 */	cmpwi r5, 6
/* 80020D30  40 80 00 3C */	bge lbl_80020D6C
/* 80020D34  48 00 00 2C */	b lbl_80020D60
lbl_80020D38:
/* 80020D38  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80020D3C  48 00 07 D5 */	bl fpcEx_ToExecuteQ__FP18base_process_class
/* 80020D40  2C 03 00 00 */	cmpwi r3, 0
/* 80020D44  40 82 00 10 */	bne lbl_80020D54
/* 80020D48  7F E3 FB 78 */	mr r3, r31
/* 80020D4C  4B FF FE C9 */	bl fpcCtRq_Cancel__FP14create_request
/* 80020D50  48 00 00 20 */	b lbl_80020D70
lbl_80020D54:
/* 80020D54  7F E3 FB 78 */	mr r3, r31
/* 80020D58  4B FF FE 49 */	bl fpcCtRq_Delete__FP14create_request
/* 80020D5C  48 00 00 14 */	b lbl_80020D70
lbl_80020D60:
/* 80020D60  7F E3 FB 78 */	mr r3, r31
/* 80020D64  4B FF FE B1 */	bl fpcCtRq_Cancel__FP14create_request
/* 80020D68  48 00 00 08 */	b lbl_80020D70
lbl_80020D6C:
/* 80020D6C  38 60 00 01 */	li r3, 1
lbl_80020D70:
/* 80020D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020D78  7C 08 03 A6 */	mtlr r0
/* 80020D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80020D80  4E 80 00 20 */	blr 
