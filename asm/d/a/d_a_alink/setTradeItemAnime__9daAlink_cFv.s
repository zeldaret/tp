lbl_801186D4:
/* 801186D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801186D8  7C 08 02 A6 */	mflr r0
/* 801186DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801186E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801186E4  7C 7F 1B 78 */	mr r31, r3
/* 801186E8  38 80 01 88 */	li r4, 0x188
/* 801186EC  4B F9 48 95 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 801186F0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 801186F4  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 801186F8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 801186FC  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80118700  2C 00 00 01 */	cmpwi r0, 1
/* 80118704  41 82 00 54 */	beq lbl_80118758
/* 80118708  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8011870C  2C 00 00 02 */	cmpwi r0, 2
/* 80118710  40 82 00 0C */	bne lbl_8011871C
/* 80118714  80 9F 06 10 */	lwz r4, 0x610(r31)
/* 80118718  48 00 00 10 */	b lbl_80118728
lbl_8011871C:
/* 8011871C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118720  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80118724  88 84 4F B6 */	lbz r4, 0x4fb6(r4)
lbl_80118728:
/* 80118728  38 A0 00 03 */	li r5, 3
/* 8011872C  38 C0 FF FF */	li r6, -1
/* 80118730  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80118734  7C 07 07 74 */	extsb r7, r0
/* 80118738  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8011873C  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80118740  4B F0 34 A9 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80118744  7C 64 1B 78 */	mr r4, r3
/* 80118748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011874C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80118750  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80118754  4B F2 AF 99 */	bl setPtI_Id__14dEvt_control_cFUi
lbl_80118758:
/* 80118758  7F E3 FB 78 */	mr r3, r31
/* 8011875C  4B FA 70 F9 */	bl keepItemData__9daAlink_cFv
/* 80118760  38 60 00 01 */	li r3, 1
/* 80118764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80118768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011876C  7C 08 03 A6 */	mtlr r0
/* 80118770  38 21 00 10 */	addi r1, r1, 0x10
/* 80118774  4E 80 00 20 */	blr 
