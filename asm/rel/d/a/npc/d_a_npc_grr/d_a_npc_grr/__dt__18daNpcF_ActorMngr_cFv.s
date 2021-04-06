lbl_809E3020:
/* 809E3020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E3024  7C 08 02 A6 */	mflr r0
/* 809E3028  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E302C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E3030  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E3034  41 82 00 1C */	beq lbl_809E3050
/* 809E3038  3C A0 80 9E */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x809E3EB0@ha */
/* 809E303C  38 05 3E B0 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x809E3EB0@l */
/* 809E3040  90 1F 00 04 */	stw r0, 4(r31)
/* 809E3044  7C 80 07 35 */	extsh. r0, r4
/* 809E3048  40 81 00 08 */	ble lbl_809E3050
/* 809E304C  4B 8E BC F1 */	bl __dl__FPv
lbl_809E3050:
/* 809E3050  7F E3 FB 78 */	mr r3, r31
/* 809E3054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E3058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E305C  7C 08 03 A6 */	mtlr r0
/* 809E3060  38 21 00 10 */	addi r1, r1, 0x10
/* 809E3064  4E 80 00 20 */	blr 
