lbl_80023D14:
/* 80023D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023D18  7C 08 02 A6 */	mflr r0
/* 80023D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023D24  7C 7F 1B 78 */	mr r31, r3
/* 80023D28  38 7F 00 48 */	addi r3, r31, 0x48
/* 80023D2C  7F E4 FB 78 */	mr r4, r31
/* 80023D30  48 24 29 A9 */	bl cPhs_Do__FP30request_of_phase_process_classPv
/* 80023D34  2C 03 00 03 */	cmpwi r3, 3
/* 80023D38  41 82 00 38 */	beq lbl_80023D70
/* 80023D3C  40 80 00 14 */	bge lbl_80023D50
/* 80023D40  2C 03 00 01 */	cmpwi r3, 1
/* 80023D44  41 82 00 2C */	beq lbl_80023D70
/* 80023D48  40 80 00 18 */	bge lbl_80023D60
/* 80023D4C  48 00 00 24 */	b lbl_80023D70
lbl_80023D50:
/* 80023D50  2C 03 00 05 */	cmpwi r3, 5
/* 80023D54  41 82 00 1C */	beq lbl_80023D70
/* 80023D58  40 80 00 18 */	bge lbl_80023D70
/* 80023D5C  48 00 00 10 */	b lbl_80023D6C
lbl_80023D60:
/* 80023D60  7F E3 FB 78 */	mr r3, r31
/* 80023D64  4B FF FF B1 */	bl fpcSCtRq_Handler__FP29standard_create_request_class
/* 80023D68  48 00 00 08 */	b lbl_80023D70
lbl_80023D6C:
/* 80023D6C  38 60 00 04 */	li r3, 4
lbl_80023D70:
/* 80023D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023D78  7C 08 03 A6 */	mtlr r0
/* 80023D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80023D80  4E 80 00 20 */	blr 
