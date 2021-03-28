lbl_8012F358:
/* 8012F358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012F35C  7C 08 02 A6 */	mflr r0
/* 8012F360  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012F364  39 61 00 20 */	addi r11, r1, 0x20
/* 8012F368  48 23 2E 75 */	bl _savegpr_29
/* 8012F36C  7C 7D 1B 78 */	mr r29, r3
/* 8012F370  3C 60 80 39 */	lis r3, lit_3757@ha
/* 8012F374  3B E3 D6 58 */	addi r31, r3, lit_3757@l
/* 8012F378  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 8012F37C  38 7D 33 98 */	addi r3, r29, 0x3398
/* 8012F380  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012F384  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 8012F388  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8012F38C  41 82 00 10 */	beq lbl_8012F39C
/* 8012F390  38 9F 17 D0 */	addi r4, r31, 0x17d0
/* 8012F394  C0 44 00 6C */	lfs f2, 0x6c(r4)
/* 8012F398  48 00 00 0C */	b lbl_8012F3A4
lbl_8012F39C:
/* 8012F39C  38 9F 18 D0 */	addi r4, r31, 0x18d0
/* 8012F3A0  C0 44 00 10 */	lfs f2, 0x10(r4)
lbl_8012F3A4:
/* 8012F3A4  48 14 13 9D */	bl cLib_chaseF__FPfff
/* 8012F3A8  7F A3 EB 78 */	mr r3, r29
/* 8012F3AC  4B F8 32 B9 */	bl spActionButton__9daAlink_cFv
/* 8012F3B0  2C 03 00 00 */	cmpwi r3, 0
/* 8012F3B4  40 82 00 1C */	bne lbl_8012F3D0
/* 8012F3B8  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 8012F3BC  28 00 00 0F */	cmplwi r0, 0xf
/* 8012F3C0  41 82 00 10 */	beq lbl_8012F3D0
/* 8012F3C4  7F A3 EB 78 */	mr r3, r29
/* 8012F3C8  48 00 7E ED */	bl checkNextActionWolfFromLie__9daAlink_cFv
/* 8012F3CC  48 00 00 34 */	b lbl_8012F400
lbl_8012F3D0:
/* 8012F3D0  7F C3 F3 78 */	mr r3, r30
/* 8012F3D4  48 02 F0 F9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F3D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012F3DC  41 82 00 24 */	beq lbl_8012F400
/* 8012F3E0  7F A3 EB 78 */	mr r3, r29
/* 8012F3E4  38 80 00 0E */	li r4, 0xe
/* 8012F3E8  38 BF 1A E0 */	addi r5, r31, 0x1ae0
/* 8012F3EC  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 8012F3F0  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 8012F3F4  4B FF A2 E5 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012F3F8  38 00 00 01 */	li r0, 1
/* 8012F3FC  90 1D 31 98 */	stw r0, 0x3198(r29)
lbl_8012F400:
/* 8012F400  38 60 00 01 */	li r3, 1
/* 8012F404  39 61 00 20 */	addi r11, r1, 0x20
/* 8012F408  48 23 2E 21 */	bl _restgpr_29
/* 8012F40C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012F410  7C 08 03 A6 */	mtlr r0
/* 8012F414  38 21 00 20 */	addi r1, r1, 0x20
/* 8012F418  4E 80 00 20 */	blr 
