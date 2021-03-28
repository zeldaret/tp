lbl_800210D4:
/* 800210D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800210D8  7C 08 02 A6 */	mflr r0
/* 800210DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800210E0  3C 60 80 3A */	lis r3, g_fpcDtTg_Queue@ha
/* 800210E4  38 63 39 A0 */	addi r3, r3, g_fpcDtTg_Queue@l
/* 800210E8  3C 80 80 02 */	lis r4, fpcDtTg_Do__FP16delete_tag_classPFPv_i@ha
/* 800210EC  38 84 0F 9C */	addi r4, r4, fpcDtTg_Do__FP16delete_tag_classPFPv_i@l
/* 800210F0  3C A0 80 02 */	lis r5, fpcDt_deleteMethod__FP18base_process_class@ha
/* 800210F4  38 A5 10 60 */	addi r5, r5, fpcDt_deleteMethod__FP18base_process_class@l
/* 800210F8  48 24 4F 69 */	bl cLsIt_Method__FP15node_list_classPFP10node_classPv_iPv
/* 800210FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021100  7C 08 03 A6 */	mtlr r0
/* 80021104  38 21 00 10 */	addi r1, r1, 0x10
/* 80021108  4E 80 00 20 */	blr 
