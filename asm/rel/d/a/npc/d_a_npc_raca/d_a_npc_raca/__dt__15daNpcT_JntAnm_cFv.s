lbl_80AB85A4:
/* 80AB85A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB85A8  7C 08 02 A6 */	mflr r0
/* 80AB85AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB85B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB85B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB85B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB85BC  7C 9E 23 78 */	mr r30, r4
/* 80AB85C0  41 82 00 C4 */	beq lbl_80AB8684
/* 80AB85C4  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AB9424@ha */
/* 80AB85C8  38 03 94 24 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AB9424@l */
/* 80AB85CC  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AB85D0  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AB85D4  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB85D8  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB85DC  38 A0 00 0C */	li r5, 0xc
/* 80AB85E0  38 C0 00 03 */	li r6, 3
/* 80AB85E4  4B 8A 97 05 */	bl __destroy_arr
/* 80AB85E8  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AB85EC  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB85F0  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB85F4  38 A0 00 0C */	li r5, 0xc
/* 80AB85F8  38 C0 00 03 */	li r6, 3
/* 80AB85FC  4B 8A 96 ED */	bl __destroy_arr
/* 80AB8600  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AB8604  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8608  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB860C  38 A0 00 0C */	li r5, 0xc
/* 80AB8610  38 C0 00 03 */	li r6, 3
/* 80AB8614  4B 8A 96 D5 */	bl __destroy_arr
/* 80AB8618  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AB861C  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8620  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB8624  38 A0 00 0C */	li r5, 0xc
/* 80AB8628  38 C0 00 03 */	li r6, 3
/* 80AB862C  4B 8A 96 BD */	bl __destroy_arr
/* 80AB8630  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AB8634  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8638  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB863C  38 A0 00 0C */	li r5, 0xc
/* 80AB8640  38 C0 00 03 */	li r6, 3
/* 80AB8644  4B 8A 96 A5 */	bl __destroy_arr
/* 80AB8648  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AB864C  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB7FC8@ha */
/* 80AB8650  38 84 7F C8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB7FC8@l */
/* 80AB8654  38 A0 00 0C */	li r5, 0xc
/* 80AB8658  38 C0 00 03 */	li r6, 3
/* 80AB865C  4B 8A 96 8D */	bl __destroy_arr
/* 80AB8660  28 1F 00 00 */	cmplwi r31, 0
/* 80AB8664  41 82 00 10 */	beq lbl_80AB8674
/* 80AB8668  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB9418@ha */
/* 80AB866C  38 03 94 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB9418@l */
/* 80AB8670  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AB8674:
/* 80AB8674  7F C0 07 35 */	extsh. r0, r30
/* 80AB8678  40 81 00 0C */	ble lbl_80AB8684
/* 80AB867C  7F E3 FB 78 */	mr r3, r31
/* 80AB8680  4B 81 66 BD */	bl __dl__FPv
lbl_80AB8684:
/* 80AB8684  7F E3 FB 78 */	mr r3, r31
/* 80AB8688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB868C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB8690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8694  7C 08 03 A6 */	mtlr r0
/* 80AB8698  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB869C  4E 80 00 20 */	blr 
