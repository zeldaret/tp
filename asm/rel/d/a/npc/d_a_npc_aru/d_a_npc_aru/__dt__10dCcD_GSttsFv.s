lbl_80956E94:
/* 80956E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80956E98  7C 08 02 A6 */	mflr r0
/* 80956E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80956EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80956EA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80956EA8  41 82 00 30 */	beq lbl_80956ED8
/* 80956EAC  3C 60 80 95 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80957FFC@ha */
/* 80956EB0  38 03 7F FC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80957FFC@l */
/* 80956EB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80956EB8  41 82 00 10 */	beq lbl_80956EC8
/* 80956EBC  3C 60 80 95 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80957FF0@ha */
/* 80956EC0  38 03 7F F0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80957FF0@l */
/* 80956EC4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80956EC8:
/* 80956EC8  7C 80 07 35 */	extsh. r0, r4
/* 80956ECC  40 81 00 0C */	ble lbl_80956ED8
/* 80956ED0  7F E3 FB 78 */	mr r3, r31
/* 80956ED4  4B 97 7E 69 */	bl __dl__FPv
lbl_80956ED8:
/* 80956ED8  7F E3 FB 78 */	mr r3, r31
/* 80956EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80956EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80956EE4  7C 08 03 A6 */	mtlr r0
/* 80956EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80956EEC  4E 80 00 20 */	blr 
