lbl_8002DF1C:
/* 8002DF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DF20  7C 08 02 A6 */	mflr r0
/* 8002DF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DF2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8002DF30  7C 7E 1B 79 */	or. r30, r3, r3
/* 8002DF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DF38  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8002DF3C  7C 60 F2 14 */	add r3, r0, r30
/* 8002DF40  8B E3 5E 6C */	lbz r31, 0x5e6c(r3)
/* 8002DF44  41 82 00 0C */	beq lbl_8002DF50
/* 8002DF48  2C 1E 00 01 */	cmpwi r30, 1
/* 8002DF4C  40 82 00 E0 */	bne lbl_8002E02C
lbl_8002DF50:
/* 8002DF50  7F C3 F3 78 */	mr r3, r30
/* 8002DF54  4B FF FE 75 */	bl dComIfGs_getMixItemIndex__Fi
/* 8002DF58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002DF5C  28 00 00 FF */	cmplwi r0, 0xff
/* 8002DF60  41 82 00 CC */	beq lbl_8002E02C
/* 8002DF64  7F C3 F3 78 */	mr r3, r30
/* 8002DF68  4B FF FE 61 */	bl dComIfGs_getMixItemIndex__Fi
/* 8002DF6C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8002DF70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DF74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DF78  38 63 00 9C */	addi r3, r3, 0x9c
/* 8002DF7C  38 A0 00 00 */	li r5, 0
/* 8002DF80  48 00 50 B1 */	bl getItem__17dSv_player_item_cCFib
/* 8002DF84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002DF88  28 00 00 43 */	cmplwi r0, 0x43
/* 8002DF8C  40 82 00 10 */	bne lbl_8002DF9C
/* 8002DF90  7F E3 FB 78 */	mr r3, r31
/* 8002DF94  3B E0 00 43 */	li r31, 0x43
/* 8002DF98  48 00 00 14 */	b lbl_8002DFAC
lbl_8002DF9C:
/* 8002DF9C  28 00 00 4A */	cmplwi r0, 0x4a
/* 8002DFA0  40 82 00 0C */	bne lbl_8002DFAC
/* 8002DFA4  7F E3 FB 78 */	mr r3, r31
/* 8002DFA8  3B E0 00 4A */	li r31, 0x4a
lbl_8002DFAC:
/* 8002DFAC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002DFB0  28 00 00 43 */	cmplwi r0, 0x43
/* 8002DFB4  40 82 00 34 */	bne lbl_8002DFE8
/* 8002DFB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002DFBC  2C 00 00 70 */	cmpwi r0, 0x70
/* 8002DFC0  40 80 00 10 */	bge lbl_8002DFD0
/* 8002DFC4  2C 00 00 3E */	cmpwi r0, 0x3e
/* 8002DFC8  41 82 00 18 */	beq lbl_8002DFE0
/* 8002DFCC  48 00 00 60 */	b lbl_8002E02C
lbl_8002DFD0:
/* 8002DFD0  2C 00 00 73 */	cmpwi r0, 0x73
/* 8002DFD4  40 80 00 58 */	bge lbl_8002E02C
/* 8002DFD8  3B E0 00 59 */	li r31, 0x59
/* 8002DFDC  48 00 00 50 */	b lbl_8002E02C
lbl_8002DFE0:
/* 8002DFE0  3B E0 00 5A */	li r31, 0x5a
/* 8002DFE4  48 00 00 48 */	b lbl_8002E02C
lbl_8002DFE8:
/* 8002DFE8  28 00 00 4A */	cmplwi r0, 0x4a
/* 8002DFEC  40 82 00 40 */	bne lbl_8002E02C
/* 8002DFF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002DFF4  2C 00 00 74 */	cmpwi r0, 0x74
/* 8002DFF8  41 82 00 28 */	beq lbl_8002E020
/* 8002DFFC  40 80 00 10 */	bge lbl_8002E00C
/* 8002E000  2C 00 00 3D */	cmpwi r0, 0x3d
/* 8002E004  41 82 00 24 */	beq lbl_8002E028
/* 8002E008  48 00 00 24 */	b lbl_8002E02C
lbl_8002E00C:
/* 8002E00C  2C 00 00 76 */	cmpwi r0, 0x76
/* 8002E010  41 82 00 08 */	beq lbl_8002E018
/* 8002E014  48 00 00 18 */	b lbl_8002E02C
lbl_8002E018:
/* 8002E018  3B E0 00 5B */	li r31, 0x5b
/* 8002E01C  48 00 00 10 */	b lbl_8002E02C
lbl_8002E020:
/* 8002E020  3B E0 00 5D */	li r31, 0x5d
/* 8002E024  48 00 00 08 */	b lbl_8002E02C
lbl_8002E028:
/* 8002E028  3B E0 00 5C */	li r31, 0x5c
lbl_8002E02C:
/* 8002E02C  7F E3 FB 78 */	mr r3, r31
/* 8002E030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002E034  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002E038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E03C  7C 08 03 A6 */	mtlr r0
/* 8002E040  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E044  4E 80 00 20 */	blr 
