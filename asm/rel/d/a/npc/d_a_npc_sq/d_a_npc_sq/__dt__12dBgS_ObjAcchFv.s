lbl_80AF72F0:
/* 80AF72F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF72F4  7C 08 02 A6 */	mflr r0
/* 80AF72F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF72FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF7300  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF7304  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF7308  7C 9F 23 78 */	mr r31, r4
/* 80AF730C  41 82 00 38 */	beq lbl_80AF7344
/* 80AF7310  3C 80 80 AF */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AF7578@ha */
/* 80AF7314  38 84 75 78 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AF7578@l */
/* 80AF7318  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AF731C  38 04 00 0C */	addi r0, r4, 0xc
/* 80AF7320  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AF7324  38 04 00 18 */	addi r0, r4, 0x18
/* 80AF7328  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AF732C  38 80 00 00 */	li r4, 0
/* 80AF7330  4B 57 EC 65 */	bl __dt__9dBgS_AcchFv
/* 80AF7334  7F E0 07 35 */	extsh. r0, r31
/* 80AF7338  40 81 00 0C */	ble lbl_80AF7344
/* 80AF733C  7F C3 F3 78 */	mr r3, r30
/* 80AF7340  4B 7D 79 FD */	bl __dl__FPv
lbl_80AF7344:
/* 80AF7344  7F C3 F3 78 */	mr r3, r30
/* 80AF7348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF734C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF7350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF7354  7C 08 03 A6 */	mtlr r0
/* 80AF7358  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF735C  4E 80 00 20 */	blr 
