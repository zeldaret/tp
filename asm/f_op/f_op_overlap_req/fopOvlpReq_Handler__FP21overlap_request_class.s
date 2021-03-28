lbl_8001E9F0:
/* 8001E9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E9F4  7C 08 02 A6 */	mflr r0
/* 8001E9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E9FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001EA00  7C 7F 1B 78 */	mr r31, r3
/* 8001EA04  38 7F 00 18 */	addi r3, r31, 0x18
/* 8001EA08  7F E4 FB 78 */	mr r4, r31
/* 8001EA0C  48 24 7C CD */	bl cPhs_Do__FP30request_of_phase_process_classPv
/* 8001EA10  2C 03 00 03 */	cmpwi r3, 3
/* 8001EA14  41 82 00 54 */	beq lbl_8001EA68
/* 8001EA18  40 80 00 1C */	bge lbl_8001EA34
/* 8001EA1C  2C 03 00 01 */	cmpwi r3, 1
/* 8001EA20  41 82 00 38 */	beq lbl_8001EA58
/* 8001EA24  40 80 00 20 */	bge lbl_8001EA44
/* 8001EA28  2C 03 00 00 */	cmpwi r3, 0
/* 8001EA2C  40 80 00 24 */	bge lbl_8001EA50
/* 8001EA30  48 00 00 40 */	b lbl_8001EA70
lbl_8001EA34:
/* 8001EA34  2C 03 00 05 */	cmpwi r3, 5
/* 8001EA38  41 82 00 30 */	beq lbl_8001EA68
/* 8001EA3C  40 80 00 34 */	bge lbl_8001EA70
/* 8001EA40  48 00 00 20 */	b lbl_8001EA60
lbl_8001EA44:
/* 8001EA44  7F E3 FB 78 */	mr r3, r31
/* 8001EA48  4B FF FF A9 */	bl fopOvlpReq_Handler__FP21overlap_request_class
/* 8001EA4C  48 00 00 28 */	b lbl_8001EA74
lbl_8001EA50:
/* 8001EA50  38 60 00 00 */	li r3, 0
/* 8001EA54  48 00 00 20 */	b lbl_8001EA74
lbl_8001EA58:
/* 8001EA58  38 60 00 00 */	li r3, 0
/* 8001EA5C  48 00 00 18 */	b lbl_8001EA74
lbl_8001EA60:
/* 8001EA60  38 60 00 04 */	li r3, 4
/* 8001EA64  48 00 00 10 */	b lbl_8001EA74
lbl_8001EA68:
/* 8001EA68  38 60 00 05 */	li r3, 5
/* 8001EA6C  48 00 00 08 */	b lbl_8001EA74
lbl_8001EA70:
/* 8001EA70  38 60 00 05 */	li r3, 5
lbl_8001EA74:
/* 8001EA74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001EA78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EA7C  7C 08 03 A6 */	mtlr r0
/* 8001EA80  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EA84  4E 80 00 20 */	blr 
