lbl_8002DD3C:
/* 8002DD3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DD40  7C 08 02 A6 */	mflr r0
/* 8002DD44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DD48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DD4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8002DD50  7C 7E 1B 78 */	mr r30, r3
/* 8002DD54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DD58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DD5C  7F C4 F3 78 */	mr r4, r30
/* 8002DD60  48 00 4C FD */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8002DD64  7C 7F 1B 78 */	mr r31, r3
/* 8002DD68  7F C3 F3 78 */	mr r3, r30
/* 8002DD6C  48 00 00 5D */	bl dComIfGs_getMixItemIndex__Fi
/* 8002DD70  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8002DD74  28 00 00 0F */	cmplwi r0, 0xf
/* 8002DD78  41 80 00 14 */	blt lbl_8002DD8C
/* 8002DD7C  28 00 00 12 */	cmplwi r0, 0x12
/* 8002DD80  40 80 00 0C */	bge lbl_8002DD8C
/* 8002DD84  7F E3 FB 78 */	mr r3, r31
/* 8002DD88  48 00 00 28 */	b lbl_8002DDB0
lbl_8002DD8C:
/* 8002DD8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002DD90  28 00 00 FF */	cmplwi r0, 0xff
/* 8002DD94  41 82 00 18 */	beq lbl_8002DDAC
/* 8002DD98  28 00 00 0F */	cmplwi r0, 0xf
/* 8002DD9C  41 80 00 10 */	blt lbl_8002DDAC
/* 8002DDA0  28 00 00 12 */	cmplwi r0, 0x12
/* 8002DDA4  40 80 00 08 */	bge lbl_8002DDAC
/* 8002DDA8  48 00 00 08 */	b lbl_8002DDB0
lbl_8002DDAC:
/* 8002DDAC  38 60 00 FF */	li r3, 0xff
lbl_8002DDB0:
/* 8002DDB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DDB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002DDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DDBC  7C 08 03 A6 */	mtlr r0
/* 8002DDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DDC4  4E 80 00 20 */	blr 
