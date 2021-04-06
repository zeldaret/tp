lbl_80859B34:
/* 80859B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80859B38  7C 08 02 A6 */	mflr r0
/* 80859B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80859B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80859B44  93 C1 00 08 */	stw r30, 8(r1)
/* 80859B48  7C 7F 1B 78 */	mr r31, r3
/* 80859B4C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80859B50  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80859B54  98 03 05 95 */	stb r0, 0x595(r3)
/* 80859B58  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80859B5C  98 03 05 91 */	stb r0, 0x591(r3)
/* 80859B60  38 00 00 00 */	li r0, 0
/* 80859B64  98 03 05 90 */	stb r0, 0x590(r3)
/* 80859B68  88 03 05 97 */	lbz r0, 0x597(r3)
/* 80859B6C  28 00 00 00 */	cmplwi r0, 0
/* 80859B70  40 82 00 90 */	bne lbl_80859C00
/* 80859B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859B7C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80859B80  7F C3 F3 78 */	mr r3, r30
/* 80859B84  38 80 0C 01 */	li r4, 0xc01
/* 80859B88  4B 7D AE 35 */	bl isEventBit__11dSv_event_cCFUs
/* 80859B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80859B90  41 82 00 E0 */	beq lbl_80859C70
/* 80859B94  7F C3 F3 78 */	mr r3, r30
/* 80859B98  38 80 1E 08 */	li r4, 0x1e08
/* 80859B9C  4B 7D AE 21 */	bl isEventBit__11dSv_event_cCFUs
/* 80859BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80859BA4  40 82 00 CC */	bne lbl_80859C70
/* 80859BA8  88 9F 05 95 */	lbz r4, 0x595(r31)
/* 80859BAC  28 04 00 FF */	cmplwi r4, 0xff
/* 80859BB0  41 82 00 C0 */	beq lbl_80859C70
/* 80859BB4  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80859BB8  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80859BBC  7C A5 07 74 */	extsb r5, r5
/* 80859BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859BC8  4B 7D B7 99 */	bl isSwitch__10dSv_info_cCFii
/* 80859BCC  2C 03 00 00 */	cmpwi r3, 0
/* 80859BD0  41 82 00 A0 */	beq lbl_80859C70
/* 80859BD4  38 00 00 09 */	li r0, 9
/* 80859BD8  98 1F 05 90 */	stb r0, 0x590(r31)
/* 80859BDC  38 00 00 FA */	li r0, 0xfa
/* 80859BE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859BE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859BE8  90 03 0E 80 */	stw r0, 0xe80(r3)
/* 80859BEC  88 1F 05 91 */	lbz r0, 0x591(r31)
/* 80859BF0  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 80859BF4  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 80859BF8  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 80859BFC  48 00 00 74 */	b lbl_80859C70
lbl_80859C00:
/* 80859C00  28 00 00 02 */	cmplwi r0, 2
/* 80859C04  40 82 00 6C */	bne lbl_80859C70
/* 80859C08  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80859C0C  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80859C10  7C 00 07 75 */	extsb. r0, r0
/* 80859C14  41 82 00 5C */	beq lbl_80859C70
/* 80859C18  88 9F 05 95 */	lbz r4, 0x595(r31)
/* 80859C1C  28 04 00 FF */	cmplwi r4, 0xff
/* 80859C20  41 82 00 48 */	beq lbl_80859C68
/* 80859C24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859C28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859C2C  88 BF 04 E2 */	lbz r5, 0x4e2(r31)
/* 80859C30  7C A5 07 74 */	extsb r5, r5
/* 80859C34  4B 7D B7 2D */	bl isSwitch__10dSv_info_cCFii
/* 80859C38  2C 03 00 00 */	cmpwi r3, 0
/* 80859C3C  40 82 00 2C */	bne lbl_80859C68
/* 80859C40  38 60 00 00 */	li r3, 0
/* 80859C44  88 9F 05 91 */	lbz r4, 0x591(r31)
/* 80859C48  3C A0 80 86 */	lis r5, lit_4012@ha /* 0x80859EC8@ha */
/* 80859C4C  C0 25 9E C8 */	lfs f1, lit_4012@l(r5)  /* 0x80859EC8@l */
/* 80859C50  4B 94 EB BD */	bl dKy_custom_colset__FUcUcf
/* 80859C54  88 1F 05 91 */	lbz r0, 0x591(r31)
/* 80859C58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859C5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859C60  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 80859C64  48 00 00 0C */	b lbl_80859C70
lbl_80859C68:
/* 80859C68  38 00 00 01 */	li r0, 1
/* 80859C6C  98 1F 05 90 */	stb r0, 0x590(r31)
lbl_80859C70:
/* 80859C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80859C74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80859C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80859C7C  7C 08 03 A6 */	mtlr r0
/* 80859C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80859C84  4E 80 00 20 */	blr 
