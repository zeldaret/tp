lbl_80039DA4:
/* 80039DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039DA8  7C 08 02 A6 */	mflr r0
/* 80039DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039DB4  80 0D 88 A4 */	lwz r0, m_data__7dDemo_c(r13)
/* 80039DB8  28 00 00 00 */	cmplwi r0, 0
/* 80039DBC  40 82 00 2C */	bne lbl_80039DE8
/* 80039DC0  80 0D 88 C4 */	lwz r0, m_branchData__7dDemo_c(r13)
/* 80039DC4  28 00 00 00 */	cmplwi r0, 0
/* 80039DC8  40 82 00 0C */	bne lbl_80039DD4
/* 80039DCC  38 60 00 00 */	li r3, 0
/* 80039DD0  48 00 00 F8 */	b lbl_80039EC8
lbl_80039DD4:
/* 80039DD4  90 0D 88 A4 */	stw r0, m_data__7dDemo_c(r13)
/* 80039DD8  38 00 00 00 */	li r0, 0
/* 80039DDC  90 0D 88 C4 */	stw r0, m_branchData__7dDemo_c(r13)
/* 80039DE0  38 60 00 01 */	li r3, 1
/* 80039DE4  48 00 00 E4 */	b lbl_80039EC8
lbl_80039DE8:
/* 80039DE8  80 0D 88 BC */	lwz r0, m_status__7dDemo_c(r13)
/* 80039DEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80039DF0  41 82 00 1C */	beq lbl_80039E0C
/* 80039DF4  4B FF 7C DD */	bl daMP_c_THPPlayerPlay__6daMP_cFv
/* 80039DF8  80 0D 88 BC */	lwz r0, m_status__7dDemo_c(r13)
/* 80039DFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80039E00  41 82 00 0C */	beq lbl_80039E0C
/* 80039E04  38 60 00 01 */	li r3, 1
/* 80039E08  48 00 00 C0 */	b lbl_80039EC8
lbl_80039E0C:
/* 80039E0C  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 80039E10  38 80 00 01 */	li r4, 1
/* 80039E14  48 24 F6 A1 */	bl forward__Q37JStudio3stb8TControlFUl
/* 80039E18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80039E1C  41 82 00 30 */	beq lbl_80039E4C
/* 80039E20  80 6D 88 A8 */	lwz r3, m_frame__7dDemo_c(r13)
/* 80039E24  38 03 00 01 */	addi r0, r3, 1
/* 80039E28  90 0D 88 A8 */	stw r0, m_frame__7dDemo_c(r13)
/* 80039E2C  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 80039E30  80 03 00 54 */	lwz r0, 0x54(r3)
/* 80039E34  2C 00 00 00 */	cmpwi r0, 0
/* 80039E38  41 81 00 1C */	bgt lbl_80039E54
/* 80039E3C  80 6D 88 B4 */	lwz r3, m_frameNoMsg__7dDemo_c(r13)
/* 80039E40  38 03 00 01 */	addi r0, r3, 1
/* 80039E44  90 0D 88 B4 */	stw r0, m_frameNoMsg__7dDemo_c(r13)
/* 80039E48  48 00 00 0C */	b lbl_80039E54
lbl_80039E4C:
/* 80039E4C  38 00 00 02 */	li r0, 2
/* 80039E50  90 0D 88 B8 */	stw r0, m_mode__7dDemo_c(r13)
lbl_80039E54:
/* 80039E54  80 0D 88 C4 */	lwz r0, m_branchData__7dDemo_c(r13)
/* 80039E58  28 00 00 00 */	cmplwi r0, 0
/* 80039E5C  41 82 00 08 */	beq lbl_80039E64
/* 80039E60  4B FF FE ED */	bl branch__7dDemo_cFv
lbl_80039E64:
/* 80039E64  4B FF 5E A5 */	bl dComIfGs_staffroll_next_go_check__Fv
/* 80039E68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80039E6C  41 82 00 58 */	beq lbl_80039EC4
/* 80039E70  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80039E74  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 80039E78  4B FF 5E 91 */	bl dComIfGs_staffroll_next_go_check__Fv
/* 80039E7C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80039E80  28 00 00 0A */	cmplwi r0, 0xa
/* 80039E84  40 81 00 18 */	ble lbl_80039E9C
/* 80039E88  38 00 00 00 */	li r0, 0
/* 80039E8C  98 1F 13 0C */	stb r0, 0x130c(r31)
/* 80039E90  38 00 00 02 */	li r0, 2
/* 80039E94  90 0D 88 B8 */	stw r0, m_mode__7dDemo_c(r13)
/* 80039E98  48 00 00 2C */	b lbl_80039EC4
lbl_80039E9C:
/* 80039E9C  4B FF 5E 6D */	bl dComIfGs_staffroll_next_go_check__Fv
/* 80039EA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80039EA4  28 00 00 01 */	cmplwi r0, 1
/* 80039EA8  40 82 00 10 */	bne lbl_80039EB8
/* 80039EAC  C0 22 83 E8 */	lfs f1, lit_5322(r2)
/* 80039EB0  38 6D 80 84 */	la r3, g_blackColor(r13) /* 80450604-_SDA_BASE_ */
/* 80039EB4  4B FC E1 25 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_80039EB8:
/* 80039EB8  88 7F 13 0C */	lbz r3, 0x130c(r31)
/* 80039EBC  38 03 00 01 */	addi r0, r3, 1
/* 80039EC0  98 1F 13 0C */	stb r0, 0x130c(r31)
lbl_80039EC4:
/* 80039EC4  38 60 00 01 */	li r3, 1
lbl_80039EC8:
/* 80039EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80039ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039ED0  7C 08 03 A6 */	mtlr r0
/* 80039ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80039ED8  4E 80 00 20 */	blr 
