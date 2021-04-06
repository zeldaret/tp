lbl_80071E84:
/* 80071E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80071E88  7C 08 02 A6 */	mflr r0
/* 80071E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80071E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80071E94  7C 7F 1B 78 */	mr r31, r3
/* 80071E98  80 63 03 34 */	lwz r3, 0x334(r3)
/* 80071E9C  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80071EA0  41 82 00 7C */	beq lbl_80071F1C
/* 80071EA4  38 7F 00 28 */	addi r3, r31, 0x28
/* 80071EA8  88 9F 04 FC */	lbz r4, 0x4fc(r31)
/* 80071EAC  38 A0 00 00 */	li r5, 0
/* 80071EB0  48 00 11 39 */	bl setAlphaAnm__10dAttDraw_cFUcUc
/* 80071EB4  38 7F 00 28 */	addi r3, r31, 0x28
/* 80071EB8  38 80 00 01 */	li r4, 1
/* 80071EBC  C0 3F 05 04 */	lfs f1, 0x504(r31)
/* 80071EC0  48 00 0F 19 */	bl setAnm__10dAttDraw_cFUcf
/* 80071EC4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80071EC8  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 80071ECC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80071ED0  D0 1F 01 90 */	stfs f0, 0x190(r31)
/* 80071ED4  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80071ED8  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 80071EDC  38 00 00 01 */	li r0, 1
/* 80071EE0  98 1F 01 9D */	stb r0, 0x19d(r31)
/* 80071EE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80071EE8  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80071EEC  80 85 5F 18 */	lwz r4, 0x5f18(r5)
/* 80071EF0  3C 60 36 A0 */	lis r3, 0x36A0 /* 0x36A02311@ha */
/* 80071EF4  38 03 23 11 */	addi r0, r3, 0x2311 /* 0x36A02311@l */
/* 80071EF8  7C 80 00 39 */	and. r0, r4, r0
/* 80071EFC  41 82 00 10 */	beq lbl_80071F0C
/* 80071F00  80 05 5F 1C */	lwz r0, 0x5f1c(r5)
/* 80071F04  70 00 00 11 */	andi. r0, r0, 0x11
/* 80071F08  41 82 01 80 */	beq lbl_80072088
lbl_80071F0C:
/* 80071F0C  7F E3 FB 78 */	mr r3, r31
/* 80071F10  38 80 00 57 */	li r4, 0x57
/* 80071F14  48 00 0E 6D */	bl lockSoundStart__12dAttention_cFUl
/* 80071F18  48 00 01 70 */	b lbl_80072088
lbl_80071F1C:
/* 80071F1C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80071F20  41 82 00 6C */	beq lbl_80071F8C
/* 80071F24  38 7F 00 28 */	addi r3, r31, 0x28
/* 80071F28  88 9F 04 FD */	lbz r4, 0x4fd(r31)
/* 80071F2C  38 A0 00 01 */	li r5, 1
/* 80071F30  48 00 10 B9 */	bl setAlphaAnm__10dAttDraw_cFUcUc
/* 80071F34  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 80071F38  7C 00 07 75 */	extsb. r0, r0
/* 80071F3C  41 80 00 18 */	blt lbl_80071F54
/* 80071F40  38 00 00 01 */	li r0, 1
/* 80071F44  98 1F 03 28 */	stb r0, 0x328(r31)
/* 80071F48  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80071F4C  64 00 40 00 */	oris r0, r0, 0x4000
/* 80071F50  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80071F54:
/* 80071F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80071F58  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80071F5C  80 85 5F 18 */	lwz r4, 0x5f18(r5)
/* 80071F60  3C 60 36 A0 */	lis r3, 0x36A0 /* 0x36A02311@ha */
/* 80071F64  38 03 23 11 */	addi r0, r3, 0x2311 /* 0x36A02311@l */
/* 80071F68  7C 80 00 39 */	and. r0, r4, r0
/* 80071F6C  41 82 00 10 */	beq lbl_80071F7C
/* 80071F70  80 05 5F 1C */	lwz r0, 0x5f1c(r5)
/* 80071F74  70 00 00 11 */	andi. r0, r0, 0x11
/* 80071F78  41 82 01 10 */	beq lbl_80072088
lbl_80071F7C:
/* 80071F7C  7F E3 FB 78 */	mr r3, r31
/* 80071F80  38 80 00 58 */	li r4, 0x58
/* 80071F84  48 00 0D FD */	bl lockSoundStart__12dAttention_cFUl
/* 80071F88  48 00 01 00 */	b lbl_80072088
lbl_80071F8C:
/* 80071F8C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80071F90  41 82 00 54 */	beq lbl_80071FE4
/* 80071F94  38 7F 00 28 */	addi r3, r31, 0x28
/* 80071F98  38 80 00 00 */	li r4, 0
/* 80071F9C  C0 3F 05 00 */	lfs f1, 0x500(r31)
/* 80071FA0  48 00 0E 39 */	bl setAnm__10dAttDraw_cFUcf
/* 80071FA4  38 7F 00 28 */	addi r3, r31, 0x28
/* 80071FA8  88 9F 04 FC */	lbz r4, 0x4fc(r31)
/* 80071FAC  38 A0 00 00 */	li r5, 0
/* 80071FB0  48 00 10 39 */	bl setAlphaAnm__10dAttDraw_cFUcUc
/* 80071FB4  C0 1F 04 E4 */	lfs f0, 0x4e4(r31)
/* 80071FB8  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 80071FBC  C0 1F 04 E8 */	lfs f0, 0x4e8(r31)
/* 80071FC0  D0 1F 01 90 */	stfs f0, 0x190(r31)
/* 80071FC4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80071FC8  D0 1F 01 94 */	stfs f0, 0x194(r31)
/* 80071FCC  38 00 00 00 */	li r0, 0
/* 80071FD0  98 1F 01 9D */	stb r0, 0x19d(r31)
/* 80071FD4  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80071FD8  64 00 40 00 */	oris r0, r0, 0x4000
/* 80071FDC  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80071FE0  48 00 00 A8 */	b lbl_80072088
lbl_80071FE4:
/* 80071FE4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80071FE8  41 82 00 64 */	beq lbl_8007204C
/* 80071FEC  38 7F 00 28 */	addi r3, r31, 0x28
/* 80071FF0  88 9F 04 FC */	lbz r4, 0x4fc(r31)
/* 80071FF4  38 A0 00 00 */	li r5, 0
/* 80071FF8  48 00 0F F1 */	bl setAlphaAnm__10dAttDraw_cFUcUc
/* 80071FFC  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 80072000  38 80 00 00 */	li r4, 0
/* 80072004  C0 3F 05 00 */	lfs f1, 0x500(r31)
/* 80072008  48 00 0D D1 */	bl setAnm__10dAttDraw_cFUcf
/* 8007200C  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 80072010  88 9F 04 FD */	lbz r4, 0x4fd(r31)
/* 80072014  38 A0 00 01 */	li r5, 1
/* 80072018  48 00 0F D1 */	bl setAlphaAnm__10dAttDraw_cFUcUc
/* 8007201C  C0 1F 04 E4 */	lfs f0, 0x4e4(r31)
/* 80072020  D0 1F 03 04 */	stfs f0, 0x304(r31)
/* 80072024  C0 1F 04 E8 */	lfs f0, 0x4e8(r31)
/* 80072028  D0 1F 03 08 */	stfs f0, 0x308(r31)
/* 8007202C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80072030  D0 1F 03 0C */	stfs f0, 0x30c(r31)
/* 80072034  38 00 00 00 */	li r0, 0
/* 80072038  98 1F 03 15 */	stb r0, 0x315(r31)
/* 8007203C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072040  64 00 40 00 */	oris r0, r0, 0x4000
/* 80072044  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072048  48 00 00 40 */	b lbl_80072088
lbl_8007204C:
/* 8007204C  80 1F 03 D8 */	lwz r0, 0x3d8(r31)
/* 80072050  2C 00 00 00 */	cmpwi r0, 0
/* 80072054  41 81 00 34 */	bgt lbl_80072088
/* 80072058  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007205C  7C 00 07 75 */	extsb. r0, r0
/* 80072060  40 82 00 28 */	bne lbl_80072088
/* 80072064  38 7F 00 28 */	addi r3, r31, 0x28
/* 80072068  88 9F 04 FD */	lbz r4, 0x4fd(r31)
/* 8007206C  38 A0 00 01 */	li r5, 1
/* 80072070  48 00 0F 79 */	bl setAlphaAnm__10dAttDraw_cFUcUc
/* 80072074  38 00 00 01 */	li r0, 1
/* 80072078  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007207C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072080  64 00 40 00 */	oris r0, r0, 0x4000
/* 80072084  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80072088:
/* 80072088  88 1F 03 29 */	lbz r0, 0x329(r31)
/* 8007208C  28 00 00 01 */	cmplwi r0, 1
/* 80072090  40 82 00 28 */	bne lbl_800720B8
/* 80072094  88 1F 01 9B */	lbz r0, 0x19b(r31)
/* 80072098  28 00 00 03 */	cmplwi r0, 3
/* 8007209C  40 82 00 44 */	bne lbl_800720E0
/* 800720A0  38 00 00 04 */	li r0, 4
/* 800720A4  98 1F 01 9B */	stb r0, 0x19b(r31)
/* 800720A8  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800720AC  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 800720B0  90 1F 03 34 */	stw r0, 0x334(r31)
/* 800720B4  48 00 00 2C */	b lbl_800720E0
lbl_800720B8:
/* 800720B8  88 1F 01 9B */	lbz r0, 0x19b(r31)
/* 800720BC  28 00 00 03 */	cmplwi r0, 3
/* 800720C0  40 82 00 20 */	bne lbl_800720E0
/* 800720C4  38 00 00 04 */	li r0, 4
/* 800720C8  98 1F 01 9B */	stb r0, 0x19b(r31)
/* 800720CC  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800720D0  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 800720D4  90 1F 03 34 */	stw r0, 0x334(r31)
/* 800720D8  38 00 FF FF */	li r0, -1
/* 800720DC  98 1F 03 28 */	stb r0, 0x328(r31)
lbl_800720E0:
/* 800720E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800720E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800720E8  7C 08 03 A6 */	mtlr r0
/* 800720EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800720F0  4E 80 00 20 */	blr 
