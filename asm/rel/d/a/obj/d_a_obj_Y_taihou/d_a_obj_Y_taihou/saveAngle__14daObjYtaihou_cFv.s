lbl_80B9FFAC:
/* 80B9FFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FFB0  7C 08 02 A6 */	mflr r0
/* 80B9FFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FFB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9FFBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9FFC0  7C 7E 1B 78 */	mr r30, r3
/* 80B9FFC4  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80B9FFC8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B9FFCC  54 1F C6 3E */	rlwinm r31, r0, 0x18, 0x18, 0x1f
/* 80B9FFD0  88 03 07 75 */	lbz r0, 0x775(r3)
/* 80B9FFD4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80B9FFD8  41 82 00 1C */	beq lbl_80B9FFF4
/* 80B9FFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9FFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9FFE4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B9FFE8  7C 05 07 74 */	extsb r5, r0
/* 80B9FFEC  4B 49 52 15 */	bl onSwitch__10dSv_info_cFii
/* 80B9FFF0  48 00 00 18 */	b lbl_80BA0008
lbl_80B9FFF4:
/* 80B9FFF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9FFF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9FFFC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BA0000  7C 05 07 74 */	extsb r5, r0
/* 80BA0004  4B 49 52 AD */	bl offSwitch__10dSv_info_cFii
lbl_80BA0008:
/* 80BA0008  88 1E 07 75 */	lbz r0, 0x775(r30)
/* 80BA000C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BA0010  41 82 00 20 */	beq lbl_80BA0030
/* 80BA0014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA0018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA001C  7F E4 FB 78 */	mr r4, r31
/* 80BA0020  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BA0024  7C 05 07 74 */	extsb r5, r0
/* 80BA0028  4B 49 51 D9 */	bl onSwitch__10dSv_info_cFii
/* 80BA002C  48 00 00 1C */	b lbl_80BA0048
lbl_80BA0030:
/* 80BA0030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA0034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA0038  7F E4 FB 78 */	mr r4, r31
/* 80BA003C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BA0040  7C 05 07 74 */	extsb r5, r0
/* 80BA0044  4B 49 52 6D */	bl offSwitch__10dSv_info_cFii
lbl_80BA0048:
/* 80BA0048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA004C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA0050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0054  7C 08 03 A6 */	mtlr r0
/* 80BA0058  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA005C  4E 80 00 20 */	blr 
