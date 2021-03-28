lbl_804FBB40:
/* 804FBB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBB44  7C 08 02 A6 */	mflr r0
/* 804FBB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBB4C  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804FBB50  38 63 BC 58 */	addi r3, r3, l_HIO@l
/* 804FBB54  4B FF F5 99 */	bl __ct__12daE_Ga_HIO_cFv
/* 804FBB58  3C 80 80 50 */	lis r4, __dt__12daE_Ga_HIO_cFv@ha
/* 804FBB5C  38 84 BA F8 */	addi r4, r4, __dt__12daE_Ga_HIO_cFv@l
/* 804FBB60  3C A0 80 50 */	lis r5, lit_3641@ha
/* 804FBB64  38 A5 BC 4C */	addi r5, r5, lit_3641@l
/* 804FBB68  4B FF F5 11 */	bl __register_global_object
/* 804FBB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBB70  7C 08 03 A6 */	mtlr r0
/* 804FBB74  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBB78  4E 80 00 20 */	blr 
