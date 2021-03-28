lbl_80023214:
/* 80023214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023218  7C 08 02 A6 */	mflr r0
/* 8002321C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023224  3C 60 80 3F */	lis r3, l_fpcPi_Queue@ha
/* 80023228  38 63 4E 58 */	addi r3, r3, l_fpcPi_Queue@l
/* 8002322C  48 24 37 41 */	bl cTg_GetFirst__FP15node_list_class
/* 80023230  28 03 00 00 */	cmplwi r3, 0
/* 80023234  41 82 00 1C */	beq lbl_80023250
/* 80023238  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8002323C  3B E3 00 68 */	addi r31, r3, 0x68
/* 80023240  38 7F 00 14 */	addi r3, r31, 0x14
/* 80023244  4B FF E3 45 */	bl fpcLy_CancelQTo__FP24process_method_tag_class
/* 80023248  7F E3 FB 78 */	mr r3, r31
/* 8002324C  48 00 00 08 */	b lbl_80023254
lbl_80023250:
/* 80023250  38 60 00 00 */	li r3, 0
lbl_80023254:
/* 80023254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002325C  7C 08 03 A6 */	mtlr r0
/* 80023260  38 21 00 10 */	addi r1, r1, 0x10
/* 80023264  4E 80 00 20 */	blr 
