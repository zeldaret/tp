lbl_804ED844:
/* 804ED844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED848  7C 08 02 A6 */	mflr r0
/* 804ED84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ED854  7C 7F 1B 78 */	mr r31, r3
/* 804ED858  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 804ED85C  3C 80 80 4F */	lis r4, stringBase0@ha
/* 804ED860  38 84 EA 34 */	addi r4, r4, stringBase0@l
/* 804ED864  4B B3 F7 A4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804ED868  88 1F 10 D9 */	lbz r0, 0x10d9(r31)
/* 804ED86C  28 00 00 00 */	cmplwi r0, 0
/* 804ED870  41 82 00 10 */	beq lbl_804ED880
/* 804ED874  38 00 00 00 */	li r0, 0
/* 804ED878  3C 60 80 4F */	lis r3, struct_804EEF2C+0x1@ha
/* 804ED87C  98 03 EF 2D */	stb r0, struct_804EEF2C+0x1@l(r3)
lbl_804ED880:
/* 804ED880  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 804ED884  28 00 00 00 */	cmplwi r0, 0
/* 804ED888  41 82 00 0C */	beq lbl_804ED894
/* 804ED88C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED890  4B B2 3A 80 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_804ED894:
/* 804ED894  38 60 00 01 */	li r3, 1
/* 804ED898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ED89C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED8A0  7C 08 03 A6 */	mtlr r0
/* 804ED8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED8A8  4E 80 00 20 */	blr 
