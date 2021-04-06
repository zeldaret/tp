lbl_80190208:
/* 80190208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019020C  7C 08 02 A6 */	mflr r0
/* 80190210  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80190218  7C 7F 1B 78 */	mr r31, r3
/* 8019021C  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 80190220  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 80190224  4B E8 6A BD */	bl SaveSync__15mDoMemCd_Ctrl_cFv
/* 80190228  90 7F 03 B4 */	stw r3, 0x3b4(r31)
/* 8019022C  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 80190230  2C 00 00 00 */	cmpwi r0, 0
/* 80190234  41 82 00 0C */	beq lbl_80190240
/* 80190238  38 00 00 00 */	li r0, 0
/* 8019023C  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_80190240:
/* 80190240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80190244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190248  7C 08 03 A6 */	mtlr r0
/* 8019024C  38 21 00 10 */	addi r1, r1, 0x10
/* 80190250  4E 80 00 20 */	blr 
