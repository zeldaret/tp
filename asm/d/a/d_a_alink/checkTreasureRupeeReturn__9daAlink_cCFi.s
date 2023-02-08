lbl_8011A6FC:
/* 8011A6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A700  7C 08 02 A6 */	mflr r0
/* 8011A704  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A70C  93 C1 00 08 */	stw r30, 8(r1)
/* 8011A710  7C 9E 23 78 */	mr r30, r4
/* 8011A714  2C 1E 00 ED */	cmpwi r30, 0xed
/* 8011A718  40 82 00 08 */	bne lbl_8011A720
/* 8011A71C  3B C0 00 05 */	li r30, 5
lbl_8011A720:
/* 8011A720  34 1E FF FC */	addic. r0, r30, -4
/* 8011A724  41 80 00 10 */	blt lbl_8011A734
/* 8011A728  38 1E FF FC */	addi r0, r30, -4
/* 8011A72C  2C 00 00 04 */	cmpwi r0, 4
/* 8011A730  41 80 00 0C */	blt lbl_8011A73C
lbl_8011A734:
/* 8011A734  38 60 00 00 */	li r3, 0
/* 8011A738  48 00 00 48 */	b lbl_8011A780
lbl_8011A73C:
/* 8011A73C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011A740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011A744  A3 E3 00 04 */	lhz r31, 4(r3)
/* 8011A748  4B F1 83 61 */	bl getRupeeMax__21dSv_player_status_a_cCFv
/* 8011A74C  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8011A750  38 1E FF FC */	addi r0, r30, -4
/* 8011A754  54 00 10 3A */	slwi r0, r0, 2
/* 8011A758  3C 60 80 39 */	lis r3, rupeeCount@ha /* 0x80391B7C@ha */
/* 8011A75C  38 63 1B 7C */	addi r3, r3, rupeeCount@l /* 0x80391B7C@l */
/* 8011A760  7C 63 00 2E */	lwzx r3, r3, r0
/* 8011A764  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8011A768  7C 83 02 14 */	add r4, r3, r0
/* 8011A76C  7C 80 2A 78 */	xor r0, r4, r5
/* 8011A770  7C 03 0E 70 */	srawi r3, r0, 1
/* 8011A774  7C 00 20 38 */	and r0, r0, r4
/* 8011A778  7C 00 18 50 */	subf r0, r0, r3
/* 8011A77C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8011A780:
/* 8011A780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A784  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011A788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A78C  7C 08 03 A6 */	mtlr r0
/* 8011A790  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A794  4E 80 00 20 */	blr 
