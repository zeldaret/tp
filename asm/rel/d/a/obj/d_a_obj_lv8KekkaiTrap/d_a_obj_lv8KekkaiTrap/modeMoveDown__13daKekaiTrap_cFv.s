lbl_80C88214:
/* 80C88214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88218  7C 08 02 A6 */	mflr r0
/* 80C8821C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C88224  93 C1 00 08 */	stw r30, 8(r1)
/* 80C88228  7C 7E 1B 78 */	mr r30, r3
/* 80C8822C  3C 60 80 C9 */	lis r3, lit_3651@ha /* 0x80C884E4@ha */
/* 80C88230  3B E3 84 E4 */	addi r31, r3, lit_3651@l /* 0x80C884E4@l */
/* 80C88234  88 7E 05 B0 */	lbz r3, 0x5b0(r30)
/* 80C88238  28 03 00 00 */	cmplwi r3, 0
/* 80C8823C  41 82 00 10 */	beq lbl_80C8824C
/* 80C88240  38 03 FF FF */	addi r0, r3, -1
/* 80C88244  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80C88248  48 00 00 68 */	b lbl_80C882B0
lbl_80C8824C:
/* 80C8824C  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8861C@ha */
/* 80C88250  38 63 86 1C */	addi r3, r3, l_HIO@l /* 0x80C8861C@l */
/* 80C88254  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80C88258  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C8825C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C88260  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C88264  4B 5E 84 DD */	bl cLib_chaseF__FPfff
/* 80C88268  38 7E 04 F0 */	addi r3, r30, 0x4f0
/* 80C8826C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C88270  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C88274  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C88278  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80C8827C  4B 5E 77 01 */	bl cLib_addCalc__FPfffff
/* 80C88280  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C88284  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C88288  40 82 00 28 */	bne lbl_80C882B0
/* 80C8828C  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C88290  28 04 00 00 */	cmplwi r4, 0
/* 80C88294  41 82 00 14 */	beq lbl_80C882A8
/* 80C88298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8829C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C882A0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C882A4  4B 3E BF AD */	bl Release__4cBgSFP9dBgW_Base
lbl_80C882A8:
/* 80C882A8  7F C3 F3 78 */	mr r3, r30
/* 80C882AC  4B FF FE 59 */	bl init_modeWait__13daKekaiTrap_cFv
lbl_80C882B0:
/* 80C882B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C882B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C882B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C882BC  7C 08 03 A6 */	mtlr r0
/* 80C882C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C882C4  4E 80 00 20 */	blr 
