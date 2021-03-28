lbl_80023188:
/* 80023188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002318C  7C 08 02 A6 */	mflr r0
/* 80023190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023198  93 C1 00 08 */	stw r30, 8(r1)
/* 8002319C  7C 7E 1B 78 */	mr r30, r3
/* 800231A0  83 E3 00 30 */	lwz r31, 0x30(r3)
/* 800231A4  3C 60 80 3F */	lis r3, l_fpcPi_Queue@ha
/* 800231A8  38 63 4E 58 */	addi r3, r3, l_fpcPi_Queue@l
/* 800231AC  7F C4 F3 78 */	mr r4, r30
/* 800231B0  48 24 38 35 */	bl cTg_Addition__FP15node_list_classP16create_tag_class
/* 800231B4  2C 03 00 00 */	cmpwi r3, 0
/* 800231B8  41 82 00 40 */	beq lbl_800231F8
/* 800231BC  3C 1F 00 01 */	addis r0, r31, 1
/* 800231C0  28 00 FF FD */	cmplwi r0, 0xfffd
/* 800231C4  41 82 00 2C */	beq lbl_800231F0
/* 800231C8  7F E3 FB 78 */	mr r3, r31
/* 800231CC  4B FF E5 81 */	bl fpcLy_Layer__FUi
/* 800231D0  38 9E 00 14 */	addi r4, r30, 0x14
/* 800231D4  4B FF E3 D5 */	bl fpcLy_ToCancelQ__FP11layer_classP24process_method_tag_class
/* 800231D8  2C 03 00 00 */	cmpwi r3, 0
/* 800231DC  40 82 00 14 */	bne lbl_800231F0
/* 800231E0  7F C3 F3 78 */	mr r3, r30
/* 800231E4  48 24 37 C1 */	bl cTg_SingleCut__FP16create_tag_class
/* 800231E8  38 60 00 00 */	li r3, 0
/* 800231EC  48 00 00 10 */	b lbl_800231FC
lbl_800231F0:
/* 800231F0  38 60 00 01 */	li r3, 1
/* 800231F4  48 00 00 08 */	b lbl_800231FC
lbl_800231F8:
/* 800231F8  38 60 00 00 */	li r3, 0
lbl_800231FC:
/* 800231FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023200  83 C1 00 08 */	lwz r30, 8(r1)
/* 80023204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023208  7C 08 03 A6 */	mtlr r0
/* 8002320C  38 21 00 10 */	addi r1, r1, 0x10
/* 80023210  4E 80 00 20 */	blr 
