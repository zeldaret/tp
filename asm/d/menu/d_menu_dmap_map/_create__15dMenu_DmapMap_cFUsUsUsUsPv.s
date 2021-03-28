lbl_801C0CD8:
/* 801C0CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0CDC  7C 08 02 A6 */	mflr r0
/* 801C0CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0CE4  91 0D 8B 08 */	stw r8, m_res__22dMdm_HIO_prm_res_dst_s(r13)
/* 801C0CE8  38 00 00 78 */	li r0, 0x78
/* 801C0CEC  90 03 00 84 */	stw r0, 0x84(r3)
/* 801C0CF0  48 00 00 81 */	bl setTexture__15dMenu_DmapMap_cFUsUsUsUs
/* 801C0CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0CF8  7C 08 03 A6 */	mtlr r0
/* 801C0CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0D00  4E 80 00 20 */	blr 
