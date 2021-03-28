lbl_804D6704:
/* 804D6704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6708  7C 08 02 A6 */	mflr r0
/* 804D670C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6714  93 C1 00 08 */	stw r30, 8(r1)
/* 804D6718  7C 7F 1B 78 */	mr r31, r3
/* 804D671C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804D6720  28 00 00 02 */	cmplwi r0, 2
/* 804D6724  40 82 00 30 */	bne lbl_804D6754
/* 804D6728  38 00 00 03 */	li r0, 3
/* 804D672C  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 804D6730  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804D6734  7C 1F 07 74 */	extsb r31, r0
/* 804D6738  4B FF F6 CD */	bl getSwbit__10daAndsw2_cFv
/* 804D673C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D6740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6748  7F E5 FB 78 */	mr r5, r31
/* 804D674C  4B B5 EA B4 */	b onSwitch__10dSv_info_cFii
/* 804D6750  48 00 01 38 */	b lbl_804D6888
lbl_804D6754:
/* 804D6754  4B FF F6 C9 */	bl getType__10daAndsw2_cFv
/* 804D6758  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D675C  28 00 00 01 */	cmplwi r0, 1
/* 804D6760  40 82 00 14 */	bne lbl_804D6774
/* 804D6764  7F E3 FB 78 */	mr r3, r31
/* 804D6768  4B FF F7 55 */	bl chkAllSw2__10daAndsw2_cFv
/* 804D676C  2C 03 00 00 */	cmpwi r3, 0
/* 804D6770  41 82 00 70 */	beq lbl_804D67E0
lbl_804D6774:
/* 804D6774  7F E3 FB 78 */	mr r3, r31
/* 804D6778  4B FF F6 A5 */	bl getType__10daAndsw2_cFv
/* 804D677C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6780  28 00 00 03 */	cmplwi r0, 3
/* 804D6784  40 82 00 14 */	bne lbl_804D6798
/* 804D6788  7F E3 FB 78 */	mr r3, r31
/* 804D678C  4B FF F7 D9 */	bl chkSwStatus__10daAndsw2_cFv
/* 804D6790  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D6794  41 82 00 4C */	beq lbl_804D67E0
lbl_804D6798:
/* 804D6798  7F E3 FB 78 */	mr r3, r31
/* 804D679C  4B FF F6 81 */	bl getType__10daAndsw2_cFv
/* 804D67A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D67A4  28 00 00 05 */	cmplwi r0, 5
/* 804D67A8  40 82 00 14 */	bne lbl_804D67BC
/* 804D67AC  7F E3 FB 78 */	mr r3, r31
/* 804D67B0  4B FF F7 0D */	bl chkAllSw2__10daAndsw2_cFv
/* 804D67B4  2C 03 00 00 */	cmpwi r3, 0
/* 804D67B8  41 82 00 28 */	beq lbl_804D67E0
lbl_804D67BC:
/* 804D67BC  7F E3 FB 78 */	mr r3, r31
/* 804D67C0  4B FF F6 5D */	bl getType__10daAndsw2_cFv
/* 804D67C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D67C8  28 00 00 06 */	cmplwi r0, 6
/* 804D67CC  40 82 00 20 */	bne lbl_804D67EC
/* 804D67D0  7F E3 FB 78 */	mr r3, r31
/* 804D67D4  4B FF F6 E9 */	bl chkAllSw2__10daAndsw2_cFv
/* 804D67D8  2C 03 00 00 */	cmpwi r3, 0
/* 804D67DC  40 82 00 10 */	bne lbl_804D67EC
lbl_804D67E0:
/* 804D67E0  38 00 00 00 */	li r0, 0
/* 804D67E4  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 804D67E8  48 00 00 A0 */	b lbl_804D6888
lbl_804D67EC:
/* 804D67EC  7F E3 FB 78 */	mr r3, r31
/* 804D67F0  4B FF F6 2D */	bl getType__10daAndsw2_cFv
/* 804D67F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D67F8  28 00 00 05 */	cmplwi r0, 5
/* 804D67FC  40 82 00 64 */	bne lbl_804D6860
/* 804D6800  7F E3 FB 78 */	mr r3, r31
/* 804D6804  4B FF F5 F5 */	bl getEventNo__10daAndsw2_cFv
/* 804D6808  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804D680C  4B B5 BE 10 */	b dLib_getEventSwitchNo__Fi
/* 804D6810  7C 60 1B 78 */	mr r0, r3
/* 804D6814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D681C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 804D6820  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804D6824  7C 05 07 74 */	extsb r5, r0
/* 804D6828  4B B5 EB 38 */	b isSwitch__10dSv_info_cCFii
/* 804D682C  2C 03 00 00 */	cmpwi r3, 0
/* 804D6830  41 82 00 30 */	beq lbl_804D6860
/* 804D6834  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804D6838  7C 1E 07 74 */	extsb r30, r0
/* 804D683C  7F E3 FB 78 */	mr r3, r31
/* 804D6840  4B FF F5 C5 */	bl getSwbit__10daAndsw2_cFv
/* 804D6844  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D6848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D684C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6850  7F C5 F3 78 */	mr r5, r30
/* 804D6854  4B B5 E9 AC */	b onSwitch__10dSv_info_cFii
/* 804D6858  38 00 00 04 */	li r0, 4
/* 804D685C  98 1F 05 6C */	stb r0, 0x56c(r31)
lbl_804D6860:
/* 804D6860  7F E3 FB 78 */	mr r3, r31
/* 804D6864  4B FF F5 95 */	bl getEventNo__10daAndsw2_cFv
/* 804D6868  7C 65 1B 78 */	mr r5, r3
/* 804D686C  7F E3 FB 78 */	mr r3, r31
/* 804D6870  A8 9F 05 6A */	lha r4, 0x56a(r31)
/* 804D6874  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804D6878  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804D687C  38 E0 00 00 */	li r7, 0
/* 804D6880  39 00 00 01 */	li r8, 1
/* 804D6884  4B B4 4D F8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_804D6888:
/* 804D6888  38 60 00 01 */	li r3, 1
/* 804D688C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6890  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6898  7C 08 03 A6 */	mtlr r0
/* 804D689C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D68A0  4E 80 00 20 */	blr 
