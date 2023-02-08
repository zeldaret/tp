lbl_800F7208:
/* 800F7208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F720C  7C 08 02 A6 */	mflr r0
/* 800F7210  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7218  7C 7F 1B 78 */	mr r31, r3
/* 800F721C  38 80 00 9E */	li r4, 0x9e
/* 800F7220  4B FC BB 85 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F7224  2C 03 00 00 */	cmpwi r3, 0
/* 800F7228  40 82 00 0C */	bne lbl_800F7234
/* 800F722C  38 60 00 00 */	li r3, 0
/* 800F7230  48 00 00 30 */	b lbl_800F7260
lbl_800F7234:
/* 800F7234  7F E3 FB 78 */	mr r3, r31
/* 800F7238  4B FF D3 65 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F723C  7F E3 FB 78 */	mr r3, r31
/* 800F7240  38 80 00 01 */	li r4, 1
/* 800F7244  48 01 1E A9 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 800F7248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F724C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7250  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F7254  60 00 40 00 */	ori r0, r0, 0x4000
/* 800F7258  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F725C  38 60 00 01 */	li r3, 1
lbl_800F7260:
/* 800F7260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7268  7C 08 03 A6 */	mtlr r0
/* 800F726C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7270  4E 80 00 20 */	blr 
