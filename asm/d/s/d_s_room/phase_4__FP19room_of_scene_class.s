lbl_8025BAF8:
/* 8025BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025BAFC  7C 08 02 A6 */	mflr r0
/* 8025BB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025BB04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025BB08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025BB0C  80 04 5D AC */	lwz r0, 0x5dac(r4)
/* 8025BB10  28 00 00 00 */	cmplwi r0, 0
/* 8025BB14  40 82 00 0C */	bne lbl_8025BB20
/* 8025BB18  38 60 00 00 */	li r3, 0
/* 8025BB1C  48 00 00 1C */	b lbl_8025BB38
lbl_8025BB20:
/* 8025BB20  4B FF F7 CD */	bl objectSetCheck__FP19room_of_scene_class
/* 8025BB24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8025BB28  20 00 00 00 */	subfic r0, r0, 0
/* 8025BB2C  7C 60 01 10 */	subfe r3, r0, r0
/* 8025BB30  38 00 00 04 */	li r0, 4
/* 8025BB34  7C 03 18 38 */	and r3, r0, r3
lbl_8025BB38:
/* 8025BB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025BB3C  7C 08 03 A6 */	mtlr r0
/* 8025BB40  38 21 00 10 */	addi r1, r1, 0x10
/* 8025BB44  4E 80 00 20 */	blr 
