.include "macros.inc"

.section .text, "ax" # 800569dc


.global dKyd_dmpalet_getp
dKyd_dmpalet_getp:
/* 800569DC 0005391C  3C 60 80 3B */	lis r3, lbl_803A953C@ha
/* 800569E0 00053920  38 63 95 3C */	addi r3, r3, lbl_803A953C@l
/* 800569E4 00053924  4E 80 00 20 */	blr 

.global dKyd_dmpselect_getp
dKyd_dmpselect_getp:
/* 800569E8 00053928  3C 60 80 3B */	lis r3, lbl_803A987C@ha
/* 800569EC 0005392C  38 63 98 7C */	addi r3, r3, lbl_803A987C@l
/* 800569F0 00053930  4E 80 00 20 */	blr 

.global dKyd_dmenvr_getp
dKyd_dmenvr_getp:
/* 800569F4 00053934  3C 60 80 3B */	lis r3, lbl_803A9894@ha
/* 800569F8 00053938  38 63 98 94 */	addi r3, r3, lbl_803A9894@l
/* 800569FC 0005393C  4E 80 00 20 */	blr 

.global dKyd_dmvrbox_getp
dKyd_dmvrbox_getp:
/* 80056A00 00053940  3C 60 80 3B */	lis r3, lbl_803A9918@ha
/* 80056A04 00053944  38 63 99 18 */	addi r3, r3, lbl_803A9918@l
/* 80056A08 00053948  4E 80 00 20 */	blr 

.global dKyd_schejule_getp
dKyd_schejule_getp:
/* 80056A0C 0005394C  3C 60 80 3B */	lis r3, lbl_803A9434@ha
/* 80056A10 00053950  38 63 94 34 */	addi r3, r3, lbl_803A9434@l
/* 80056A14 00053954  4E 80 00 20 */	blr 

.global dKyd_schejule_boss_getp
dKyd_schejule_boss_getp:
/* 80056A18 00053958  3C 60 80 3B */	lis r3, lbl_803A94B8@ha
/* 80056A1C 0005395C  38 63 94 B8 */	addi r3, r3, lbl_803A94B8@l
/* 80056A20 00053960  4E 80 00 20 */	blr 

.global dKyd_xfog_table_set
dKyd_xfog_table_set:
/* 80056A24 00053964  38 80 00 00 */	li r4, 0
/* 80056A28 00053968  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80056A2C 0005396C  1C A0 00 14 */	mulli r5, r0, 0x14
/* 80056A30 00053970  3C 60 80 3B */	lis r3, lbl_803A9A94@ha
/* 80056A34 00053974  38 03 9A 94 */	addi r0, r3, lbl_803A9A94@l
/* 80056A38 00053978  7C C0 2A 14 */	add r6, r0, r5
/* 80056A3C 0005397C  3C 60 80 43 */	lis r3, lbl_8042CA54@ha
/* 80056A40 00053980  38 A3 CA 54 */	addi r5, r3, lbl_8042CA54@l
/* 80056A44 00053984  38 00 00 0A */	li r0, 0xa
/* 80056A48 00053988  7C 09 03 A6 */	mtctr r0
lbl_80056A4C:
/* 80056A4C 0005398C  7C 06 22 2E */	lhzx r0, r6, r4
/* 80056A50 00053990  7C 65 22 14 */	add r3, r5, r4
/* 80056A54 00053994  B0 03 10 AC */	sth r0, 0x10ac(r3)
/* 80056A58 00053998  38 84 00 02 */	addi r4, r4, 2
/* 80056A5C 0005399C  42 00 FF F0 */	bdnz lbl_80056A4C
/* 80056A60 000539A0  4E 80 00 20 */	blr 

.global dKyd_maple_col_getp
dKyd_maple_col_getp:
/* 80056A64 000539A4  3C 60 80 3B */	lis r3, lbl_803A9410@ha
/* 80056A68 000539A8  38 63 94 10 */	addi r3, r3, lbl_803A9410@l
/* 80056A6C 000539AC  4E 80 00 20 */	blr 

.global dKyd_darkworld_tbl_getp
dKyd_darkworld_tbl_getp:
/* 80056A70 000539B0  3C 60 80 3B */	lis r3, lbl_803A9198@ha
/* 80056A74 000539B4  38 63 91 98 */	addi r3, r3, lbl_803A9198@l
/* 80056A78 000539B8  4E 80 00 20 */	blr 

.global dKyd_light_size_tbl_getp
dKyd_light_size_tbl_getp:
/* 80056A7C 000539BC  3C 60 80 3B */	lis r3, lbl_803A92A8@ha
/* 80056A80 000539C0  38 63 92 A8 */	addi r3, r3, lbl_803A92A8@l
/* 80056A84 000539C4  4E 80 00 20 */	blr 

.global dKyd_light_tw_size_tbl_getp
dKyd_light_tw_size_tbl_getp:
/* 80056A88 000539C8  3C 60 80 3B */	lis r3, lbl_803A93C8@ha
/* 80056A8C 000539CC  38 63 93 C8 */	addi r3, r3, lbl_803A93C8@l
/* 80056A90 000539D0  4E 80 00 20 */	blr 

.global dKyd_BloomInf_tbl_getp
dKyd_BloomInf_tbl_getp:
/* 80056A94 000539D4  1C 83 00 0C */	mulli r4, r3, 0xc
/* 80056A98 000539D8  3C 60 80 3B */	lis r3, lbl_803A8E98@ha
/* 80056A9C 000539DC  38 03 8E 98 */	addi r0, r3, lbl_803A8E98@l
/* 80056AA0 000539E0  7C 60 22 14 */	add r3, r0, r4
/* 80056AA4 000539E4  4E 80 00 20 */	blr 

