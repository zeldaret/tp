lbl_80039B6C:
/* 80039B6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80039B70  7C 08 02 A6 */	mflr r0
/* 80039B74  90 01 00 44 */	stw r0, 0x44(r1)
/* 80039B78  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80039B7C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80039B80  39 61 00 30 */	addi r11, r1, 0x30
/* 80039B84  48 32 86 59 */	bl _savegpr_29
/* 80039B88  7C 7F 1B 78 */	mr r31, r3
/* 80039B8C  7C 9D 23 78 */	mr r29, r4
/* 80039B90  FF E0 08 90 */	fmr f31, f1
/* 80039B94  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 80039B98  48 24 F8 6D */	bl reset__Q37JStudio3stb8TControlFv
/* 80039B9C  38 61 00 0C */	addi r3, r1, 0xc
/* 80039BA0  80 8D 88 84 */	lwz r4, m_control__7dDemo_c(r13)
/* 80039BA4  48 24 BA C9 */	bl __ct__Q27JStudio6TParseFPQ27JStudio8TControl
/* 80039BA8  93 E1 00 08 */	stw r31, 8(r1)
/* 80039BAC  38 61 00 0C */	addi r3, r1, 0xc
/* 80039BB0  38 81 00 08 */	addi r4, r1, 8
/* 80039BB4  38 A0 00 00 */	li r5, 0
/* 80039BB8  48 2A 2D 59 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 80039BBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80039BC0  40 82 00 2C */	bne lbl_80039BEC
/* 80039BC4  3C 60 80 38 */	lis r3, d_d_demo__stringBase0@ha /* 0x803797F8@ha */
/* 80039BC8  38 63 97 F8 */	addi r3, r3, d_d_demo__stringBase0@l /* 0x803797F8@l */
/* 80039BCC  38 63 00 08 */	addi r3, r3, 8
/* 80039BD0  4C C6 31 82 */	crclr 6
/* 80039BD4  4B FC D0 39 */	bl OSReport_Error
/* 80039BD8  38 61 00 0C */	addi r3, r1, 0xc
/* 80039BDC  38 80 FF FF */	li r4, -1
/* 80039BE0  48 24 BA C9 */	bl __dt__Q27JStudio6TParseFv
/* 80039BE4  38 60 00 00 */	li r3, 0
/* 80039BE8  48 00 00 F0 */	b lbl_80039CD8
lbl_80039BEC:
/* 80039BEC  80 0D 88 A4 */	lwz r0, m_data__7dDemo_c(r13)
/* 80039BF0  28 00 00 00 */	cmplwi r0, 0
/* 80039BF4  40 82 00 10 */	bne lbl_80039C04
/* 80039BF8  38 00 00 00 */	li r0, 0
/* 80039BFC  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 80039C00  90 03 00 40 */	stw r0, 0x40(r3)
lbl_80039C04:
/* 80039C04  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 80039C08  38 80 00 00 */	li r4, 0
/* 80039C0C  48 24 F8 A9 */	bl forward__Q37JStudio3stb8TControlFUl
/* 80039C10  93 AD 88 AC */	stw r29, m_translation__7dDemo_c(r13)
/* 80039C14  28 1D 00 00 */	cmplwi r29, 0
/* 80039C18  41 82 00 98 */	beq lbl_80039CB0
/* 80039C1C  88 0D 88 D0 */	lbz r0, data_80450E50(r13)
/* 80039C20  7C 00 07 75 */	extsb. r0, r0
/* 80039C24  40 82 00 28 */	bne lbl_80039C4C
/* 80039C28  3C 60 80 42 */	lis r3, l_translation@ha /* 0x80424668@ha */
/* 80039C2C  38 63 46 68 */	addi r3, r3, l_translation@l /* 0x80424668@l */
/* 80039C30  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80039C34  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80039C38  3C A0 80 42 */	lis r5, lit_5233@ha /* 0x8042465C@ha */
/* 80039C3C  38 A5 46 5C */	addi r5, r5, lit_5233@l /* 0x8042465C@l */
/* 80039C40  48 32 7F E5 */	bl __register_global_object
/* 80039C44  38 00 00 01 */	li r0, 1
/* 80039C48  98 0D 88 D0 */	stb r0, data_80450E50(r13)
lbl_80039C4C:
/* 80039C4C  80 8D 88 AC */	lwz r4, m_translation__7dDemo_c(r13)
/* 80039C50  C0 04 00 00 */	lfs f0, 0(r4)
/* 80039C54  3C 60 80 42 */	lis r3, l_translation@ha /* 0x80424668@ha */
/* 80039C58  D4 03 46 68 */	stfsu f0, l_translation@l(r3)  /* 0x80424668@l */
/* 80039C5C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80039C60  D0 03 00 04 */	stfs f0, 4(r3)
/* 80039C64  C0 04 00 08 */	lfs f0, 8(r4)
/* 80039C68  D0 03 00 08 */	stfs f0, 8(r3)
/* 80039C6C  90 6D 88 AC */	stw r3, m_translation__7dDemo_c(r13)
/* 80039C70  D3 ED 88 B0 */	stfs f31, m_rotationY__7dDemo_c(r13)
/* 80039C74  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 80039C78  38 00 00 01 */	li r0, 1
/* 80039C7C  98 03 00 88 */	stb r0, 0x88(r3)
/* 80039C80  98 03 00 89 */	stb r0, 0x89(r3)
/* 80039C84  C3 ED 88 B0 */	lfs f31, m_rotationY__7dDemo_c(r13)
/* 80039C88  83 CD 88 AC */	lwz r30, m_translation__7dDemo_c(r13)
/* 80039C8C  83 AD 88 84 */	lwz r29, m_control__7dDemo_c(r13)
/* 80039C90  7F A3 EB 78 */	mr r3, r29
/* 80039C94  7F C4 F3 78 */	mr r4, r30
/* 80039C98  FC 20 F8 90 */	fmr f1, f31
/* 80039C9C  48 24 B5 B5 */	bl transformOnSet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
/* 80039CA0  7F A3 EB 78 */	mr r3, r29
/* 80039CA4  7F C4 F3 78 */	mr r4, r30
/* 80039CA8  FC 20 F8 90 */	fmr f1, f31
/* 80039CAC  48 24 B6 25 */	bl transformOnGet_setOrigin_TxyzRy__Q27JStudio8TControlFRC3Vecf
lbl_80039CB0:
/* 80039CB0  38 00 00 01 */	li r0, 1
/* 80039CB4  90 0D 88 B8 */	stw r0, m_mode__7dDemo_c(r13)
/* 80039CB8  48 00 02 4D */	bl reset__7dDemo_cFv
/* 80039CBC  38 00 00 00 */	li r0, 0
/* 80039CC0  90 0D 88 A4 */	stw r0, m_data__7dDemo_c(r13)
/* 80039CC4  93 ED 88 C4 */	stw r31, m_branchData__7dDemo_c(r13)
/* 80039CC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80039CCC  38 80 FF FF */	li r4, -1
/* 80039CD0  48 24 B9 D9 */	bl __dt__Q27JStudio6TParseFv
/* 80039CD4  38 60 00 01 */	li r3, 1
lbl_80039CD8:
/* 80039CD8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80039CDC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80039CE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80039CE4  48 32 85 45 */	bl _restgpr_29
/* 80039CE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80039CEC  7C 08 03 A6 */	mtlr r0
/* 80039CF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80039CF4  4E 80 00 20 */	blr 
