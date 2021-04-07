lbl_80237BFC:
/* 80237BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237C00  7C 08 02 A6 */	mflr r0
/* 80237C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80237C0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80237C10  7C 7E 1B 78 */	mr r30, r3
/* 80237C14  80 83 01 20 */	lwz r4, 0x120(r3)
/* 80237C18  83 E4 00 04 */	lwz r31, 4(r4)
/* 80237C1C  4B FF EC DD */	bl getStatusLocal__12dMsgObject_cFv
/* 80237C20  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80237C24  A0 1E 01 68 */	lhz r0, 0x168(r30)
/* 80237C28  7C 00 18 40 */	cmplw r0, r3
/* 80237C2C  40 82 01 44 */	bne lbl_80237D70
/* 80237C30  88 1F 12 4C */	lbz r0, 0x124c(r31)
/* 80237C34  28 00 00 01 */	cmplwi r0, 1
/* 80237C38  41 82 01 38 */	beq lbl_80237D70
/* 80237C3C  28 00 00 03 */	cmplwi r0, 3
/* 80237C40  41 82 01 30 */	beq lbl_80237D70
/* 80237C44  28 00 00 04 */	cmplwi r0, 4
/* 80237C48  41 82 01 28 */	beq lbl_80237D70
/* 80237C4C  28 00 00 06 */	cmplwi r0, 6
/* 80237C50  41 82 01 20 */	beq lbl_80237D70
/* 80237C54  28 00 00 02 */	cmplwi r0, 2
/* 80237C58  41 82 01 18 */	beq lbl_80237D70
/* 80237C5C  7F C3 F3 78 */	mr r3, r30
/* 80237C60  4B FF EC 99 */	bl getStatusLocal__12dMsgObject_cFv
/* 80237C64  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237C68  28 00 00 10 */	cmplwi r0, 0x10
/* 80237C6C  40 82 00 58 */	bne lbl_80237CC4
/* 80237C70  7F C3 F3 78 */	mr r3, r30
/* 80237C74  4B FF F4 75 */	bl isHowlMessage__12dMsgObject_cFv
/* 80237C78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80237C7C  41 82 00 2C */	beq lbl_80237CA8
/* 80237C80  38 00 00 05 */	li r0, 5
/* 80237C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237C88  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237C8C  98 04 5E 3C */	stb r0, 0x5e3c(r4)
/* 80237C90  38 60 00 00 */	li r3, 0
/* 80237C94  98 64 5E 57 */	stb r3, 0x5e57(r4)
/* 80237C98  38 00 00 2A */	li r0, 0x2a
/* 80237C9C  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 80237CA0  98 64 5E 50 */	stb r3, 0x5e50(r4)
/* 80237CA4  48 00 00 CC */	b lbl_80237D70
lbl_80237CA8:
/* 80237CA8  38 00 00 23 */	li r0, 0x23
/* 80237CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237CB4  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 80237CB8  38 00 00 00 */	li r0, 0
/* 80237CBC  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 80237CC0  48 00 00 B0 */	b lbl_80237D70
lbl_80237CC4:
/* 80237CC4  7F C3 F3 78 */	mr r3, r30
/* 80237CC8  4B FF EC 31 */	bl getStatusLocal__12dMsgObject_cFv
/* 80237CCC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237CD0  28 00 00 08 */	cmplwi r0, 8
/* 80237CD4  41 82 00 2C */	beq lbl_80237D00
/* 80237CD8  7F C3 F3 78 */	mr r3, r30
/* 80237CDC  4B FF EC 1D */	bl getStatusLocal__12dMsgObject_cFv
/* 80237CE0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237CE4  28 00 00 09 */	cmplwi r0, 9
/* 80237CE8  41 82 00 18 */	beq lbl_80237D00
/* 80237CEC  7F C3 F3 78 */	mr r3, r30
/* 80237CF0  4B FF EC 09 */	bl getStatusLocal__12dMsgObject_cFv
/* 80237CF4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237CF8  28 00 00 14 */	cmplwi r0, 0x14
/* 80237CFC  40 82 00 20 */	bne lbl_80237D1C
lbl_80237D00:
/* 80237D00  38 00 00 22 */	li r0, 0x22
/* 80237D04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237D08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237D0C  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 80237D10  38 00 00 00 */	li r0, 0
/* 80237D14  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 80237D18  48 00 00 58 */	b lbl_80237D70
lbl_80237D1C:
/* 80237D1C  7F C3 F3 78 */	mr r3, r30
/* 80237D20  4B FF EB D9 */	bl getStatusLocal__12dMsgObject_cFv
/* 80237D24  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237D28  28 00 00 15 */	cmplwi r0, 0x15
/* 80237D2C  40 82 00 2C */	bne lbl_80237D58
/* 80237D30  38 00 00 22 */	li r0, 0x22
/* 80237D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237D38  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237D3C  98 04 5E 3C */	stb r0, 0x5e3c(r4)
/* 80237D40  38 60 00 00 */	li r3, 0
/* 80237D44  98 64 5E 57 */	stb r3, 0x5e57(r4)
/* 80237D48  38 00 00 2A */	li r0, 0x2a
/* 80237D4C  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 80237D50  98 64 5E 50 */	stb r3, 0x5e50(r4)
/* 80237D54  48 00 00 1C */	b lbl_80237D70
lbl_80237D58:
/* 80237D58  38 00 00 23 */	li r0, 0x23
/* 80237D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237D64  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 80237D68  38 00 00 00 */	li r0, 0
/* 80237D6C  98 03 5E 57 */	stb r0, 0x5e57(r3)
lbl_80237D70:
/* 80237D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80237D74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80237D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237D7C  7C 08 03 A6 */	mtlr r0
/* 80237D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80237D84  4E 80 00 20 */	blr 
