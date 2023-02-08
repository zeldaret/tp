lbl_80878E34:
/* 80878E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878E38  7C 08 02 A6 */	mflr r0
/* 80878E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878E40  7C 86 23 78 */	mr r6, r4
/* 80878E44  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80878E48  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80878E4C  4B 7D D9 49 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80878E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878E54  7C 08 03 A6 */	mtlr r0
/* 80878E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80878E5C  4E 80 00 20 */	blr 
