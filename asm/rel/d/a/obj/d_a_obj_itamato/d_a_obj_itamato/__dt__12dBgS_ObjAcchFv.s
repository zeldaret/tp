lbl_80C29C68:
/* 80C29C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29C6C  7C 08 02 A6 */	mflr r0
/* 80C29C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C29C78  93 C1 00 08 */	stw r30, 8(r1)
/* 80C29C7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C29C80  7C 9F 23 78 */	mr r31, r4
/* 80C29C84  41 82 00 38 */	beq lbl_80C29CBC
/* 80C29C88  3C 80 80 C3 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C29C8C  38 84 AC C8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C29C90  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C29C94  38 04 00 0C */	addi r0, r4, 0xc
/* 80C29C98  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C29C9C  38 04 00 18 */	addi r0, r4, 0x18
/* 80C29CA0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C29CA4  38 80 00 00 */	li r4, 0
/* 80C29CA8  4B 44 C2 EC */	b __dt__9dBgS_AcchFv
/* 80C29CAC  7F E0 07 35 */	extsh. r0, r31
/* 80C29CB0  40 81 00 0C */	ble lbl_80C29CBC
/* 80C29CB4  7F C3 F3 78 */	mr r3, r30
/* 80C29CB8  4B 6A 50 84 */	b __dl__FPv
lbl_80C29CBC:
/* 80C29CBC  7F C3 F3 78 */	mr r3, r30
/* 80C29CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C29CC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C29CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29CCC  7C 08 03 A6 */	mtlr r0
/* 80C29CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29CD4  4E 80 00 20 */	blr 
