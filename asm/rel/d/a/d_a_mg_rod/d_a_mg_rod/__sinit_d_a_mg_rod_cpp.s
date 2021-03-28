lbl_804BB0B8:
/* 804BB0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BB0BC  7C 08 02 A6 */	mflr r0
/* 804BB0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BB0C8  3C 60 80 4C */	lis r3, lit_1109@ha
/* 804BB0CC  3B E3 BB 90 */	addi r31, r3, lit_1109@l
/* 804BB0D0  38 7F 00 54 */	addi r3, r31, 0x54
/* 804BB0D4  4B FE E5 19 */	bl __ct__13dmg_rod_HIO_cFv
/* 804BB0D8  3C 80 80 4C */	lis r4, __dt__13dmg_rod_HIO_cFv@ha
/* 804BB0DC  38 84 B0 70 */	addi r4, r4, __dt__13dmg_rod_HIO_cFv@l
/* 804BB0E0  38 BF 00 48 */	addi r5, r31, 0x48
/* 804BB0E4  4B FE E4 95 */	bl __register_global_object
/* 804BB0E8  38 7F 00 88 */	addi r3, r31, 0x88
/* 804BB0EC  3C 80 80 4C */	lis r4, __ct__4cXyzFv@ha
/* 804BB0F0  38 84 B0 24 */	addi r4, r4, __ct__4cXyzFv@l
/* 804BB0F4  3C A0 80 4C */	lis r5, __dt__4cXyzFv@ha
/* 804BB0F8  38 A5 B1 B4 */	addi r5, r5, __dt__4cXyzFv@l
/* 804BB0FC  38 C0 00 0C */	li r6, 0xc
/* 804BB100  38 E0 00 64 */	li r7, 0x64
/* 804BB104  4B EA 6C 5C */	b __construct_array
/* 804BB108  38 60 00 00 */	li r3, 0
/* 804BB10C  3C 80 80 4C */	lis r4, __arraydtor@ha
/* 804BB110  38 84 B1 30 */	addi r4, r4, __arraydtor@l
/* 804BB114  38 BF 00 7C */	addi r5, r31, 0x7c
/* 804BB118  4B FE E4 61 */	bl __register_global_object
/* 804BB11C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BB120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BB124  7C 08 03 A6 */	mtlr r0
/* 804BB128  38 21 00 10 */	addi r1, r1, 0x10
/* 804BB12C  4E 80 00 20 */	blr 
