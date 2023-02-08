lbl_80284500:
/* 80284500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284504  7C 08 02 A6 */	mflr r0
/* 80284508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028450C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284510  7C 7F 1B 78 */	mr r31, r3
/* 80284514  7F E5 FB 78 */	mr r5, r31
/* 80284518  80 84 00 00 */	lwz r4, 0(r4)
/* 8028451C  A0 04 00 06 */	lhz r0, 6(r4)
/* 80284520  38 60 00 00 */	li r3, 0
/* 80284524  28 00 00 00 */	cmplwi r0, 0
/* 80284528  41 82 00 08 */	beq lbl_80284530
/* 8028452C  38 64 00 08 */	addi r3, r4, 8
lbl_80284530:
/* 80284530  90 65 00 00 */	stw r3, 0(r5)
/* 80284534  90 05 00 04 */	stw r0, 4(r5)
/* 80284538  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb7TObject@ha /* 0x803C4AB0@ha */
/* 8028453C  38 03 4A B0 */	addi r0, r3, __vt__Q37JStudio3fvb7TObject@l /* 0x803C4AB0@l */
/* 80284540  90 05 00 08 */	stw r0, 8(r5)
/* 80284544  38 00 00 00 */	li r0, 0
/* 80284548  90 05 00 0C */	stw r0, 0xc(r5)
/* 8028454C  90 05 00 10 */	stw r0, 0x10(r5)
/* 80284550  38 7F 00 18 */	addi r3, r31, 0x18
/* 80284554  90 65 00 14 */	stw r3, 0x14(r5)
/* 80284558  3C 80 80 3C */	lis r4, __vt__Q37JStudio3fvb22TObject_list_parameter@ha /* 0x803C4A60@ha */
/* 8028455C  38 04 4A 60 */	addi r0, r4, __vt__Q37JStudio3fvb22TObject_list_parameter@l /* 0x803C4A60@l */
/* 80284560  90 1F 00 08 */	stw r0, 8(r31)
/* 80284564  4B FF E7 D1 */	bl __ct__Q27JStudio29TFunctionValue_list_parameterFv
/* 80284568  7F E3 FB 78 */	mr r3, r31
/* 8028456C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284574  7C 08 03 A6 */	mtlr r0
/* 80284578  38 21 00 10 */	addi r1, r1, 0x10
/* 8028457C  4E 80 00 20 */	blr 
