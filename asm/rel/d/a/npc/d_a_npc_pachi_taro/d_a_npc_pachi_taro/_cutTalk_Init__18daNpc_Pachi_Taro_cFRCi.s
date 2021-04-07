lbl_80A9F0DC:
/* 80A9F0DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9F0E0  7C 08 02 A6 */	mflr r0
/* 80A9F0E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9F0E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9F0EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A9F0F0  7C 7E 1B 78 */	mr r30, r3
/* 80A9F0F4  7C 9F 23 78 */	mr r31, r4
/* 80A9F0F8  3C 60 80 AA */	lis r3, lit_5634@ha /* 0x80AA176C@ha */
/* 80A9F0FC  38 83 17 6C */	addi r4, r3, lit_5634@l /* 0x80AA176C@l */
/* 80A9F100  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9F104  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F108  90 61 00 08 */	stw r3, 8(r1)
/* 80A9F10C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9F110  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9F114  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9F118  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9F11C  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9F120  4B 6A 65 E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F124  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9F128  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9F12C  4B 6A 65 DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F130  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9F134  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A9F138  38 03 FF FB */	addi r0, r3, -5
/* 80A9F13C  28 00 00 19 */	cmplwi r0, 0x19
/* 80A9F140  41 81 00 2C */	bgt lbl_80A9F16C
/* 80A9F144  3C 60 80 AA */	lis r3, lit_5643@ha /* 0x80AA2824@ha */
/* 80A9F148  38 63 28 24 */	addi r3, r3, lit_5643@l /* 0x80AA2824@l */
/* 80A9F14C  54 00 10 3A */	slwi r0, r0, 2
/* 80A9F150  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A9F154  7C 09 03 A6 */	mtctr r0
/* 80A9F158  4E 80 04 20 */	bctr 
lbl_80A9F15C:
/* 80A9F15C  7F C3 F3 78 */	mr r3, r30
/* 80A9F160  38 80 00 4B */	li r4, 0x4b
/* 80A9F164  38 A1 00 08 */	addi r5, r1, 8
/* 80A9F168  4B 6A CA 89 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A9F16C:
/* 80A9F16C  38 60 00 01 */	li r3, 1
/* 80A9F170  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9F174  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A9F178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9F17C  7C 08 03 A6 */	mtlr r0
/* 80A9F180  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9F184  4E 80 00 20 */	blr 
