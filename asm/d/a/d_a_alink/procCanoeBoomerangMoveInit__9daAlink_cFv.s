lbl_800F70F0:
/* 800F70F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F70F4  7C 08 02 A6 */	mflr r0
/* 800F70F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F70FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7100  7C 7F 1B 78 */	mr r31, r3
/* 800F7104  38 80 00 9D */	li r4, 0x9d
/* 800F7108  4B FC BC 9D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F710C  2C 03 00 00 */	cmpwi r3, 0
/* 800F7110  40 82 00 0C */	bne lbl_800F711C
/* 800F7114  38 60 00 00 */	li r3, 0
/* 800F7118  48 00 00 30 */	b lbl_800F7148
lbl_800F711C:
/* 800F711C  7F E3 FB 78 */	mr r3, r31
/* 800F7120  4B FF D4 7D */	bl setSyncCanoePos__9daAlink_cFv
/* 800F7124  7F E3 FB 78 */	mr r3, r31
/* 800F7128  38 80 00 00 */	li r4, 0
/* 800F712C  4B FE 92 A5 */	bl initBoomerangUpperAnimeSpeed__9daAlink_cFi
/* 800F7130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7138  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F713C  64 00 00 08 */	oris r0, r0, 8
/* 800F7140  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F7144  38 60 00 01 */	li r3, 1
lbl_800F7148:
/* 800F7148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F714C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7150  7C 08 03 A6 */	mtlr r0
/* 800F7154  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7158  4E 80 00 20 */	blr 
