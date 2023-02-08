lbl_806791BC:
/* 806791BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806791C0  7C 08 02 A6 */	mflr r0
/* 806791C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806791C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806791CC  7C 7F 1B 78 */	mr r31, r3
/* 806791D0  38 7F 08 E0 */	addi r3, r31, 0x8e0
/* 806791D4  38 80 00 FA */	li r4, 0xfa
/* 806791D8  38 A0 00 00 */	li r5, 0
/* 806791DC  7F E6 FB 78 */	mr r6, r31
/* 806791E0  4B A0 A6 81 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806791E4  38 7F 09 1C */	addi r3, r31, 0x91c
/* 806791E8  38 80 00 FA */	li r4, 0xfa
/* 806791EC  38 A0 00 00 */	li r5, 0
/* 806791F0  7F E6 FB 78 */	mr r6, r31
/* 806791F4  4B A0 A6 6D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806791F8  38 7F 09 58 */	addi r3, r31, 0x958
/* 806791FC  3C 80 80 68 */	lis r4, at_sph_src@ha /* 0x8067C438@ha */
/* 80679200  38 84 C4 38 */	addi r4, r4, at_sph_src@l /* 0x8067C438@l */
/* 80679204  4B A0 B8 31 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80679208  38 1F 08 E0 */	addi r0, r31, 0x8e0
/* 8067920C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80679210  80 1F 09 84 */	lwz r0, 0x984(r31)
/* 80679214  60 00 00 01 */	ori r0, r0, 1
/* 80679218  90 1F 09 84 */	stw r0, 0x984(r31)
/* 8067921C  38 7F 0A 90 */	addi r3, r31, 0xa90
/* 80679220  3C 80 80 68 */	lis r4, shield_sph_src@ha /* 0x8067C478@ha */
/* 80679224  38 84 C4 78 */	addi r4, r4, shield_sph_src@l /* 0x8067C478@l */
/* 80679228  4B A0 B8 0D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8067922C  38 1F 09 1C */	addi r0, r31, 0x91c
/* 80679230  90 1F 0A D4 */	stw r0, 0xad4(r31)
/* 80679234  80 1F 0A BC */	lwz r0, 0xabc(r31)
/* 80679238  60 00 00 01 */	ori r0, r0, 1
/* 8067923C  90 1F 0A BC */	stw r0, 0xabc(r31)
/* 80679240  38 7F 0B C8 */	addi r3, r31, 0xbc8
/* 80679244  3C 80 80 68 */	lis r4, cc_cyl_src@ha /* 0x8067C578@ha */
/* 80679248  38 84 C5 78 */	addi r4, r4, cc_cyl_src@l /* 0x8067C578@l */
/* 8067924C  4B A0 B6 69 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80679250  38 1F 08 E0 */	addi r0, r31, 0x8e0
/* 80679254  90 1F 0C 0C */	stw r0, 0xc0c(r31)
/* 80679258  80 1F 0C 64 */	lwz r0, 0xc64(r31)
/* 8067925C  60 00 00 04 */	ori r0, r0, 4
/* 80679260  90 1F 0C 64 */	stw r0, 0xc64(r31)
/* 80679264  80 1F 0C 64 */	lwz r0, 0xc64(r31)
/* 80679268  60 00 01 00 */	ori r0, r0, 0x100
/* 8067926C  90 1F 0C 64 */	stw r0, 0xc64(r31)
/* 80679270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80679274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80679278  7C 08 03 A6 */	mtlr r0
/* 8067927C  38 21 00 10 */	addi r1, r1, 0x10
/* 80679280  4E 80 00 20 */	blr 
