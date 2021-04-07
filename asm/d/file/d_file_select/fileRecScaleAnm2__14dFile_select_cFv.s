lbl_8018FEF4:
/* 8018FEF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018FEF8  7C 08 02 A6 */	mflr r0
/* 8018FEFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018FF00  39 61 00 30 */	addi r11, r1, 0x30
/* 8018FF04  48 1D 22 D1 */	bl _savegpr_27
/* 8018FF08  7C 7B 1B 78 */	mr r27, r3
/* 8018FF0C  3B 80 00 00 */	li r28, 0
/* 8018FF10  3B C0 00 00 */	li r30, 0
/* 8018FF14  3C 60 80 43 */	lis r3, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018FF18  3B A3 C9 EC */	addi r29, r3, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018FF1C  3B E1 00 08 */	addi r31, r1, 8
lbl_8018FF20:
/* 8018FF20  7C BB F2 14 */	add r5, r27, r30
/* 8018FF24  80 65 00 BC */	lwz r3, 0xbc(r5)
/* 8018FF28  88 9D 00 05 */	lbz r4, 5(r29)
/* 8018FF2C  C0 25 00 C8 */	lfs f1, 0xc8(r5)
/* 8018FF30  C0 45 00 D4 */	lfs f2, 0xd4(r5)
/* 8018FF34  38 A0 00 00 */	li r5, 0
/* 8018FF38  48 0C 48 95 */	bl scaleAnime__8CPaneMgrFsffUc
/* 8018FF3C  98 7F 00 00 */	stb r3, 0(r31)
/* 8018FF40  3B 9C 00 01 */	addi r28, r28, 1
/* 8018FF44  2C 1C 00 03 */	cmpwi r28, 3
/* 8018FF48  3B FF 00 01 */	addi r31, r31, 1
/* 8018FF4C  3B DE 00 04 */	addi r30, r30, 4
/* 8018FF50  41 80 FF D0 */	blt lbl_8018FF20
/* 8018FF54  88 01 00 08 */	lbz r0, 8(r1)
/* 8018FF58  28 00 00 01 */	cmplwi r0, 1
/* 8018FF5C  40 82 00 24 */	bne lbl_8018FF80
/* 8018FF60  88 01 00 09 */	lbz r0, 9(r1)
/* 8018FF64  28 00 00 01 */	cmplwi r0, 1
/* 8018FF68  40 82 00 18 */	bne lbl_8018FF80
/* 8018FF6C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8018FF70  28 00 00 01 */	cmplwi r0, 1
/* 8018FF74  40 82 00 0C */	bne lbl_8018FF80
/* 8018FF78  38 60 00 01 */	li r3, 1
/* 8018FF7C  48 00 00 08 */	b lbl_8018FF84
lbl_8018FF80:
/* 8018FF80  38 60 00 00 */	li r3, 0
lbl_8018FF84:
/* 8018FF84  39 61 00 30 */	addi r11, r1, 0x30
/* 8018FF88  48 1D 22 99 */	bl _restgpr_27
/* 8018FF8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018FF90  7C 08 03 A6 */	mtlr r0
/* 8018FF94  38 21 00 30 */	addi r1, r1, 0x30
/* 8018FF98  4E 80 00 20 */	blr 
