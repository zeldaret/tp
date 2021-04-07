lbl_80256FD4:
/* 80256FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256FD8  7C 08 02 A6 */	mflr r0
/* 80256FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256FE4  7C 7F 1B 78 */	mr r31, r3
/* 80256FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80256FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80256FF0  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80256FF4  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80256FF8  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80256FFC  80 DF 01 E8 */	lwz r6, 0x1e8(r31)
/* 80257000  4B DF F7 95 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80257004  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80257008  28 00 00 00 */	cmplwi r0, 0
/* 8025700C  40 82 00 38 */	bne lbl_80257044
/* 80257010  38 00 00 07 */	li r0, 7
/* 80257014  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80257018  38 00 00 1E */	li r0, 0x1e
/* 8025701C  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80257020  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80257024  80 63 00 04 */	lwz r3, 4(r3)
/* 80257028  28 03 00 00 */	cmplwi r3, 0
/* 8025702C  41 82 00 18 */	beq lbl_80257044
/* 80257030  38 80 00 1E */	li r4, 0x1e
/* 80257034  81 83 00 00 */	lwz r12, 0(r3)
/* 80257038  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025703C  7D 89 03 A6 */	mtctr r12
/* 80257040  4E 80 04 21 */	bctrl 
lbl_80257044:
/* 80257044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025704C  7C 08 03 A6 */	mtlr r0
/* 80257050  38 21 00 10 */	addi r1, r1, 0x10
/* 80257054  4E 80 00 20 */	blr 
