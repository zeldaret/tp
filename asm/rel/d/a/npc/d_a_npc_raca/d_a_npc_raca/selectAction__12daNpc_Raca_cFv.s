lbl_80AB72BC:
/* 80AB72BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB72C0  7C 08 02 A6 */	mflr r0
/* 80AB72C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB72C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB72CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB72D0  7C 7E 1B 78 */	mr r30, r3
/* 80AB72D4  3C 60 80 AC */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AB8FBC@ha */
/* 80AB72D8  3B E3 8F BC */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80AB8FBC@l */
/* 80AB72DC  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AB72E0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AB72E4  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB72E8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB72EC  90 7E 0F 8C */	stw r3, 0xf8c(r30)
/* 80AB72F0  90 1E 0F 90 */	stw r0, 0xf90(r30)
/* 80AB72F4  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB72F8  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80AB72FC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80AB7300  2C 00 00 00 */	cmpwi r0, 0
/* 80AB7304  41 82 00 08 */	beq lbl_80AB730C
/* 80AB7308  48 00 00 74 */	b lbl_80AB737C
lbl_80AB730C:
/* 80AB730C  88 1E 0F CC */	lbz r0, 0xfcc(r30)
/* 80AB7310  28 00 00 00 */	cmplwi r0, 0
/* 80AB7314  40 82 00 4C */	bne lbl_80AB7360
/* 80AB7318  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AB731C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80AB7320  28 04 00 FF */	cmplwi r4, 0xff
/* 80AB7324  41 82 00 3C */	beq lbl_80AB7360
/* 80AB7328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB732C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB7330  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80AB7334  7C 05 07 74 */	extsb r5, r0
/* 80AB7338  4B 57 E0 29 */	bl isSwitch__10dSv_info_cCFii
/* 80AB733C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB7340  41 82 00 20 */	beq lbl_80AB7360
/* 80AB7344  80 7F 03 7C */	lwz r3, 0x37c(r31)
/* 80AB7348  80 1F 03 80 */	lwz r0, 0x380(r31)
/* 80AB734C  90 7E 0F 8C */	stw r3, 0xf8c(r30)
/* 80AB7350  90 1E 0F 90 */	stw r0, 0xf90(r30)
/* 80AB7354  80 1F 03 84 */	lwz r0, 0x384(r31)
/* 80AB7358  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80AB735C  48 00 00 38 */	b lbl_80AB7394
lbl_80AB7360:
/* 80AB7360  80 7F 03 88 */	lwz r3, 0x388(r31)
/* 80AB7364  80 1F 03 8C */	lwz r0, 0x38c(r31)
/* 80AB7368  90 7E 0F 8C */	stw r3, 0xf8c(r30)
/* 80AB736C  90 1E 0F 90 */	stw r0, 0xf90(r30)
/* 80AB7370  80 1F 03 90 */	lwz r0, 0x390(r31)
/* 80AB7374  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80AB7378  48 00 00 1C */	b lbl_80AB7394
lbl_80AB737C:
/* 80AB737C  80 7F 03 94 */	lwz r3, 0x394(r31)
/* 80AB7380  80 1F 03 98 */	lwz r0, 0x398(r31)
/* 80AB7384  90 7E 0F 8C */	stw r3, 0xf8c(r30)
/* 80AB7388  90 1E 0F 90 */	stw r0, 0xf90(r30)
/* 80AB738C  80 1F 03 9C */	lwz r0, 0x39c(r31)
/* 80AB7390  90 1E 0F 94 */	stw r0, 0xf94(r30)
lbl_80AB7394:
/* 80AB7394  38 60 00 01 */	li r3, 1
/* 80AB7398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB739C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB73A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB73A4  7C 08 03 A6 */	mtlr r0
/* 80AB73A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB73AC  4E 80 00 20 */	blr 
