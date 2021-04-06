lbl_8048BF64:
/* 8048BF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048BF68  7C 08 02 A6 */	mflr r0
/* 8048BF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048BF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048BF74  7C 7F 1B 78 */	mr r31, r3
/* 8048BF78  A0 83 05 E0 */	lhz r4, 0x5e0(r3)
/* 8048BF7C  28 04 0F FF */	cmplwi r4, 0xfff
/* 8048BF80  40 82 00 10 */	bne lbl_8048BF90
/* 8048BF84  A0 1F 05 E2 */	lhz r0, 0x5e2(r31)
/* 8048BF88  28 00 0F FF */	cmplwi r0, 0xfff
/* 8048BF8C  41 82 00 78 */	beq lbl_8048C004
lbl_8048BF90:
/* 8048BF90  28 04 0F FF */	cmplwi r4, 0xfff
/* 8048BF94  41 82 00 30 */	beq lbl_8048BFC4
/* 8048BF98  41 82 00 64 */	beq lbl_8048BFFC
/* 8048BF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048BFA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048BFA4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8048BFA8  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 8048BFAC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8048BFB0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8048BFB4  7C 84 02 2E */	lhzx r4, r4, r0
/* 8048BFB8  4B BA 8A 05 */	bl isEventBit__11dSv_event_cCFUs
/* 8048BFBC  2C 03 00 00 */	cmpwi r3, 0
/* 8048BFC0  41 82 00 3C */	beq lbl_8048BFFC
lbl_8048BFC4:
/* 8048BFC4  A0 1F 05 E2 */	lhz r0, 0x5e2(r31)
/* 8048BFC8  28 00 0F FF */	cmplwi r0, 0xfff
/* 8048BFCC  41 82 00 28 */	beq lbl_8048BFF4
/* 8048BFD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048BFD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048BFD8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8048BFDC  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8048BFE0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8048BFE4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8048BFE8  7C 84 02 2E */	lhzx r4, r4, r0
/* 8048BFEC  4B BA 89 D1 */	bl isEventBit__11dSv_event_cCFUs
/* 8048BFF0  48 00 00 8C */	b lbl_8048C07C
lbl_8048BFF4:
/* 8048BFF4  38 60 00 00 */	li r3, 0
/* 8048BFF8  48 00 00 84 */	b lbl_8048C07C
lbl_8048BFFC:
/* 8048BFFC  38 60 00 01 */	li r3, 1
/* 8048C000  48 00 00 7C */	b lbl_8048C07C
lbl_8048C004:
/* 8048C004  88 9F 05 DD */	lbz r4, 0x5dd(r31)
/* 8048C008  28 04 00 FF */	cmplwi r4, 0xff
/* 8048C00C  40 82 00 10 */	bne lbl_8048C01C
/* 8048C010  88 1F 05 DE */	lbz r0, 0x5de(r31)
/* 8048C014  28 00 00 FF */	cmplwi r0, 0xff
/* 8048C018  41 82 00 60 */	beq lbl_8048C078
lbl_8048C01C:
/* 8048C01C  28 04 00 FF */	cmplwi r4, 0xff
/* 8048C020  41 82 00 24 */	beq lbl_8048C044
/* 8048C024  41 82 00 4C */	beq lbl_8048C070
/* 8048C028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048C02C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048C030  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048C034  7C 05 07 74 */	extsb r5, r0
/* 8048C038  4B BA 93 29 */	bl isSwitch__10dSv_info_cCFii
/* 8048C03C  2C 03 00 00 */	cmpwi r3, 0
/* 8048C040  41 82 00 30 */	beq lbl_8048C070
lbl_8048C044:
/* 8048C044  88 9F 05 DE */	lbz r4, 0x5de(r31)
/* 8048C048  2C 04 0F FF */	cmpwi r4, 0xfff
/* 8048C04C  41 82 00 1C */	beq lbl_8048C068
/* 8048C050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048C054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048C058  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048C05C  7C 05 07 74 */	extsb r5, r0
/* 8048C060  4B BA 93 01 */	bl isSwitch__10dSv_info_cCFii
/* 8048C064  48 00 00 18 */	b lbl_8048C07C
lbl_8048C068:
/* 8048C068  38 60 00 00 */	li r3, 0
/* 8048C06C  48 00 00 10 */	b lbl_8048C07C
lbl_8048C070:
/* 8048C070  38 60 00 01 */	li r3, 1
/* 8048C074  48 00 00 08 */	b lbl_8048C07C
lbl_8048C078:
/* 8048C078  38 60 00 00 */	li r3, 0
lbl_8048C07C:
/* 8048C07C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C084  7C 08 03 A6 */	mtlr r0
/* 8048C088  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C08C  4E 80 00 20 */	blr 
