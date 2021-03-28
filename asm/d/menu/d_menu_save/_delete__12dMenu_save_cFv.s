lbl_801F0B28:
/* 801F0B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F0B2C  7C 08 02 A6 */	mflr r0
/* 801F0B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F0B34  39 61 00 20 */	addi r11, r1, 0x20
/* 801F0B38  48 17 16 A1 */	bl _savegpr_28
/* 801F0B3C  7C 7F 1B 78 */	mr r31, r3
/* 801F0B40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801F0B44  48 0D E1 F9 */	bl __dl__FPv
/* 801F0B48  80 7F 21 8C */	lwz r3, 0x218c(r31)
/* 801F0B4C  28 03 00 00 */	cmplwi r3, 0
/* 801F0B50  41 82 00 24 */	beq lbl_801F0B74
/* 801F0B54  41 82 00 18 */	beq lbl_801F0B6C
/* 801F0B58  38 80 00 01 */	li r4, 1
/* 801F0B5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0B60  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0B64  7D 89 03 A6 */	mtctr r12
/* 801F0B68  4E 80 04 21 */	bctrl 
lbl_801F0B6C:
/* 801F0B6C  38 00 00 00 */	li r0, 0
/* 801F0B70  90 1F 21 8C */	stw r0, 0x218c(r31)
lbl_801F0B74:
/* 801F0B74  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801F0B78  28 03 00 00 */	cmplwi r3, 0
/* 801F0B7C  41 82 00 0C */	beq lbl_801F0B88
/* 801F0B80  38 80 00 01 */	li r4, 1
/* 801F0B84  48 05 91 A5 */	bl __dt__12dMsgString_cFv
lbl_801F0B88:
/* 801F0B88  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F0B8C  28 03 00 00 */	cmplwi r3, 0
/* 801F0B90  41 82 00 1C */	beq lbl_801F0BAC
/* 801F0B94  41 82 00 18 */	beq lbl_801F0BAC
/* 801F0B98  38 80 00 01 */	li r4, 1
/* 801F0B9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0BA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0BA4  7D 89 03 A6 */	mtctr r12
/* 801F0BA8  4E 80 04 21 */	bctrl 
lbl_801F0BAC:
/* 801F0BAC  3B 80 00 00 */	li r28, 0
/* 801F0BB0  3B C0 00 00 */	li r30, 0
lbl_801F0BB4:
/* 801F0BB4  7F BF F2 14 */	add r29, r31, r30
/* 801F0BB8  80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 801F0BBC  28 03 00 00 */	cmplwi r3, 0
/* 801F0BC0  41 82 00 1C */	beq lbl_801F0BDC
/* 801F0BC4  41 82 00 18 */	beq lbl_801F0BDC
/* 801F0BC8  38 80 00 01 */	li r4, 1
/* 801F0BCC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0BD0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0BD4  7D 89 03 A6 */	mtctr r12
/* 801F0BD8  4E 80 04 21 */	bctrl 
lbl_801F0BDC:
/* 801F0BDC  80 7D 00 E0 */	lwz r3, 0xe0(r29)
/* 801F0BE0  28 03 00 00 */	cmplwi r3, 0
/* 801F0BE4  41 82 00 1C */	beq lbl_801F0C00
/* 801F0BE8  41 82 00 18 */	beq lbl_801F0C00
/* 801F0BEC  38 80 00 01 */	li r4, 1
/* 801F0BF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0BF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0BF8  7D 89 03 A6 */	mtctr r12
/* 801F0BFC  4E 80 04 21 */	bctrl 
lbl_801F0C00:
/* 801F0C00  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 801F0C04  28 03 00 00 */	cmplwi r3, 0
/* 801F0C08  41 82 00 1C */	beq lbl_801F0C24
/* 801F0C0C  41 82 00 18 */	beq lbl_801F0C24
/* 801F0C10  38 80 00 01 */	li r4, 1
/* 801F0C14  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0C18  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0C1C  7D 89 03 A6 */	mtctr r12
/* 801F0C20  4E 80 04 21 */	bctrl 
lbl_801F0C24:
/* 801F0C24  80 7D 00 F8 */	lwz r3, 0xf8(r29)
/* 801F0C28  28 03 00 00 */	cmplwi r3, 0
/* 801F0C2C  41 82 00 1C */	beq lbl_801F0C48
/* 801F0C30  41 82 00 18 */	beq lbl_801F0C48
/* 801F0C34  38 80 00 01 */	li r4, 1
/* 801F0C38  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0C3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0C40  7D 89 03 A6 */	mtctr r12
/* 801F0C44  4E 80 04 21 */	bctrl 
lbl_801F0C48:
/* 801F0C48  80 7D 00 68 */	lwz r3, 0x68(r29)
/* 801F0C4C  28 03 00 00 */	cmplwi r3, 0
/* 801F0C50  41 82 00 1C */	beq lbl_801F0C6C
/* 801F0C54  41 82 00 18 */	beq lbl_801F0C6C
/* 801F0C58  38 80 00 01 */	li r4, 1
/* 801F0C5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0C60  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0C64  7D 89 03 A6 */	mtctr r12
/* 801F0C68  4E 80 04 21 */	bctrl 
lbl_801F0C6C:
/* 801F0C6C  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 801F0C70  28 03 00 00 */	cmplwi r3, 0
/* 801F0C74  41 82 00 1C */	beq lbl_801F0C90
/* 801F0C78  41 82 00 18 */	beq lbl_801F0C90
/* 801F0C7C  38 80 00 01 */	li r4, 1
/* 801F0C80  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0C84  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0C88  7D 89 03 A6 */	mtctr r12
/* 801F0C8C  4E 80 04 21 */	bctrl 
lbl_801F0C90:
/* 801F0C90  3B 9C 00 01 */	addi r28, r28, 1
/* 801F0C94  2C 1C 00 03 */	cmpwi r28, 3
/* 801F0C98  3B DE 00 04 */	addi r30, r30, 4
/* 801F0C9C  41 80 FF 18 */	blt lbl_801F0BB4
/* 801F0CA0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801F0CA4  28 03 00 00 */	cmplwi r3, 0
/* 801F0CA8  41 82 00 1C */	beq lbl_801F0CC4
/* 801F0CAC  41 82 00 18 */	beq lbl_801F0CC4
/* 801F0CB0  38 80 00 01 */	li r4, 1
/* 801F0CB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0CB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0CBC  7D 89 03 A6 */	mtctr r12
/* 801F0CC0  4E 80 04 21 */	bctrl 
lbl_801F0CC4:
/* 801F0CC4  3B 80 00 00 */	li r28, 0
/* 801F0CC8  3B C0 00 00 */	li r30, 0
lbl_801F0CCC:
/* 801F0CCC  7F BF F2 14 */	add r29, r31, r30
/* 801F0CD0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 801F0CD4  28 03 00 00 */	cmplwi r3, 0
/* 801F0CD8  41 82 00 1C */	beq lbl_801F0CF4
/* 801F0CDC  41 82 00 18 */	beq lbl_801F0CF4
/* 801F0CE0  38 80 00 01 */	li r4, 1
/* 801F0CE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0CE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0CEC  7D 89 03 A6 */	mtctr r12
/* 801F0CF0  4E 80 04 21 */	bctrl 
lbl_801F0CF4:
/* 801F0CF4  80 7D 01 18 */	lwz r3, 0x118(r29)
/* 801F0CF8  28 03 00 00 */	cmplwi r3, 0
/* 801F0CFC  41 82 00 1C */	beq lbl_801F0D18
/* 801F0D00  41 82 00 18 */	beq lbl_801F0D18
/* 801F0D04  38 80 00 01 */	li r4, 1
/* 801F0D08  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0D0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0D10  7D 89 03 A6 */	mtctr r12
/* 801F0D14  4E 80 04 21 */	bctrl 
lbl_801F0D18:
/* 801F0D18  80 7D 01 20 */	lwz r3, 0x120(r29)
/* 801F0D1C  28 03 00 00 */	cmplwi r3, 0
/* 801F0D20  41 82 00 1C */	beq lbl_801F0D3C
/* 801F0D24  41 82 00 18 */	beq lbl_801F0D3C
/* 801F0D28  38 80 00 01 */	li r4, 1
/* 801F0D2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0D30  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0D34  7D 89 03 A6 */	mtctr r12
/* 801F0D38  4E 80 04 21 */	bctrl 
lbl_801F0D3C:
/* 801F0D3C  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 801F0D40  28 03 00 00 */	cmplwi r3, 0
/* 801F0D44  41 82 00 1C */	beq lbl_801F0D60
/* 801F0D48  41 82 00 18 */	beq lbl_801F0D60
/* 801F0D4C  38 80 00 01 */	li r4, 1
/* 801F0D50  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0D54  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0D58  7D 89 03 A6 */	mtctr r12
/* 801F0D5C  4E 80 04 21 */	bctrl 
lbl_801F0D60:
/* 801F0D60  80 7D 01 68 */	lwz r3, 0x168(r29)
/* 801F0D64  28 03 00 00 */	cmplwi r3, 0
/* 801F0D68  41 82 00 1C */	beq lbl_801F0D84
/* 801F0D6C  41 82 00 18 */	beq lbl_801F0D84
/* 801F0D70  38 80 00 01 */	li r4, 1
/* 801F0D74  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0D78  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0D7C  7D 89 03 A6 */	mtctr r12
/* 801F0D80  4E 80 04 21 */	bctrl 
lbl_801F0D84:
/* 801F0D84  80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 801F0D88  28 03 00 00 */	cmplwi r3, 0
/* 801F0D8C  41 82 00 1C */	beq lbl_801F0DA8
/* 801F0D90  41 82 00 18 */	beq lbl_801F0DA8
/* 801F0D94  38 80 00 01 */	li r4, 1
/* 801F0D98  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0D9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0DA0  7D 89 03 A6 */	mtctr r12
/* 801F0DA4  4E 80 04 21 */	bctrl 
lbl_801F0DA8:
/* 801F0DA8  80 7D 01 38 */	lwz r3, 0x138(r29)
/* 801F0DAC  28 03 00 00 */	cmplwi r3, 0
/* 801F0DB0  41 82 00 1C */	beq lbl_801F0DCC
/* 801F0DB4  41 82 00 18 */	beq lbl_801F0DCC
/* 801F0DB8  38 80 00 01 */	li r4, 1
/* 801F0DBC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0DC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0DC4  7D 89 03 A6 */	mtctr r12
/* 801F0DC8  4E 80 04 21 */	bctrl 
lbl_801F0DCC:
/* 801F0DCC  3B 9C 00 01 */	addi r28, r28, 1
/* 801F0DD0  2C 1C 00 02 */	cmpwi r28, 2
/* 801F0DD4  3B DE 00 04 */	addi r30, r30, 4
/* 801F0DD8  41 80 FE F4 */	blt lbl_801F0CCC
/* 801F0DDC  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801F0DE0  28 03 00 00 */	cmplwi r3, 0
/* 801F0DE4  41 82 00 1C */	beq lbl_801F0E00
/* 801F0DE8  41 82 00 18 */	beq lbl_801F0E00
/* 801F0DEC  38 80 00 01 */	li r4, 1
/* 801F0DF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0DF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0DF8  7D 89 03 A6 */	mtctr r12
/* 801F0DFC  4E 80 04 21 */	bctrl 
lbl_801F0E00:
/* 801F0E00  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801F0E04  28 03 00 00 */	cmplwi r3, 0
/* 801F0E08  41 82 00 1C */	beq lbl_801F0E24
/* 801F0E0C  41 82 00 18 */	beq lbl_801F0E24
/* 801F0E10  38 80 00 01 */	li r4, 1
/* 801F0E14  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0E18  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0E1C  7D 89 03 A6 */	mtctr r12
/* 801F0E20  4E 80 04 21 */	bctrl 
lbl_801F0E24:
/* 801F0E24  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801F0E28  28 03 00 00 */	cmplwi r3, 0
/* 801F0E2C  41 82 00 1C */	beq lbl_801F0E48
/* 801F0E30  41 82 00 18 */	beq lbl_801F0E48
/* 801F0E34  38 80 00 01 */	li r4, 1
/* 801F0E38  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0E3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0E40  7D 89 03 A6 */	mtctr r12
/* 801F0E44  4E 80 04 21 */	bctrl 
lbl_801F0E48:
/* 801F0E48  80 7F 01 40 */	lwz r3, 0x140(r31)
/* 801F0E4C  28 03 00 00 */	cmplwi r3, 0
/* 801F0E50  41 82 00 1C */	beq lbl_801F0E6C
/* 801F0E54  41 82 00 18 */	beq lbl_801F0E6C
/* 801F0E58  38 80 00 01 */	li r4, 1
/* 801F0E5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0E60  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0E64  7D 89 03 A6 */	mtctr r12
/* 801F0E68  4E 80 04 21 */	bctrl 
lbl_801F0E6C:
/* 801F0E6C  80 7F 01 48 */	lwz r3, 0x148(r31)
/* 801F0E70  28 03 00 00 */	cmplwi r3, 0
/* 801F0E74  41 82 00 1C */	beq lbl_801F0E90
/* 801F0E78  41 82 00 18 */	beq lbl_801F0E90
/* 801F0E7C  38 80 00 01 */	li r4, 1
/* 801F0E80  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0E84  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0E88  7D 89 03 A6 */	mtctr r12
/* 801F0E8C  4E 80 04 21 */	bctrl 
lbl_801F0E90:
/* 801F0E90  80 7F 01 50 */	lwz r3, 0x150(r31)
/* 801F0E94  28 03 00 00 */	cmplwi r3, 0
/* 801F0E98  41 82 00 1C */	beq lbl_801F0EB4
/* 801F0E9C  41 82 00 18 */	beq lbl_801F0EB4
/* 801F0EA0  38 80 00 01 */	li r4, 1
/* 801F0EA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0EA8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0EAC  7D 89 03 A6 */	mtctr r12
/* 801F0EB0  4E 80 04 21 */	bctrl 
lbl_801F0EB4:
/* 801F0EB4  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F0EB8  28 03 00 00 */	cmplwi r3, 0
/* 801F0EBC  41 82 00 1C */	beq lbl_801F0ED8
/* 801F0EC0  41 82 00 18 */	beq lbl_801F0ED8
/* 801F0EC4  38 80 00 01 */	li r4, 1
/* 801F0EC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0ECC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0ED0  7D 89 03 A6 */	mtctr r12
/* 801F0ED4  4E 80 04 21 */	bctrl 
lbl_801F0ED8:
/* 801F0ED8  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 801F0EDC  28 03 00 00 */	cmplwi r3, 0
/* 801F0EE0  41 82 00 1C */	beq lbl_801F0EFC
/* 801F0EE4  41 82 00 18 */	beq lbl_801F0EFC
/* 801F0EE8  38 80 00 01 */	li r4, 1
/* 801F0EEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0EF0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0EF4  7D 89 03 A6 */	mtctr r12
/* 801F0EF8  4E 80 04 21 */	bctrl 
lbl_801F0EFC:
/* 801F0EFC  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801F0F00  28 03 00 00 */	cmplwi r3, 0
/* 801F0F04  41 82 00 1C */	beq lbl_801F0F20
/* 801F0F08  41 82 00 18 */	beq lbl_801F0F20
/* 801F0F0C  38 80 00 01 */	li r4, 1
/* 801F0F10  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0F14  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0F18  7D 89 03 A6 */	mtctr r12
/* 801F0F1C  4E 80 04 21 */	bctrl 
lbl_801F0F20:
/* 801F0F20  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 801F0F24  28 03 00 00 */	cmplwi r3, 0
/* 801F0F28  41 82 00 1C */	beq lbl_801F0F44
/* 801F0F2C  41 82 00 18 */	beq lbl_801F0F44
/* 801F0F30  38 80 00 01 */	li r4, 1
/* 801F0F34  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0F38  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0F3C  7D 89 03 A6 */	mtctr r12
/* 801F0F40  4E 80 04 21 */	bctrl 
lbl_801F0F44:
/* 801F0F44  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F0F48  28 03 00 00 */	cmplwi r3, 0
/* 801F0F4C  41 82 00 1C */	beq lbl_801F0F68
/* 801F0F50  41 82 00 18 */	beq lbl_801F0F68
/* 801F0F54  38 80 00 01 */	li r4, 1
/* 801F0F58  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0F5C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0F60  7D 89 03 A6 */	mtctr r12
/* 801F0F64  4E 80 04 21 */	bctrl 
lbl_801F0F68:
/* 801F0F68  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 801F0F6C  28 03 00 00 */	cmplwi r3, 0
/* 801F0F70  41 82 00 1C */	beq lbl_801F0F8C
/* 801F0F74  41 82 00 18 */	beq lbl_801F0F8C
/* 801F0F78  38 80 00 01 */	li r4, 1
/* 801F0F7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0F80  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0F84  7D 89 03 A6 */	mtctr r12
/* 801F0F88  4E 80 04 21 */	bctrl 
lbl_801F0F8C:
/* 801F0F8C  80 7F 01 A4 */	lwz r3, 0x1a4(r31)
/* 801F0F90  28 03 00 00 */	cmplwi r3, 0
/* 801F0F94  41 82 00 1C */	beq lbl_801F0FB0
/* 801F0F98  41 82 00 18 */	beq lbl_801F0FB0
/* 801F0F9C  38 80 00 01 */	li r4, 1
/* 801F0FA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0FA4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0FA8  7D 89 03 A6 */	mtctr r12
/* 801F0FAC  4E 80 04 21 */	bctrl 
lbl_801F0FB0:
/* 801F0FB0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F0FB4  28 03 00 00 */	cmplwi r3, 0
/* 801F0FB8  41 82 00 1C */	beq lbl_801F0FD4
/* 801F0FBC  41 82 00 18 */	beq lbl_801F0FD4
/* 801F0FC0  38 80 00 01 */	li r4, 1
/* 801F0FC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0FC8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F0FCC  7D 89 03 A6 */	mtctr r12
/* 801F0FD0  4E 80 04 21 */	bctrl 
lbl_801F0FD4:
/* 801F0FD4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F0FD8  28 03 00 00 */	cmplwi r3, 0
/* 801F0FDC  41 82 00 1C */	beq lbl_801F0FF8
/* 801F0FE0  41 82 00 18 */	beq lbl_801F0FF8
/* 801F0FE4  38 80 00 01 */	li r4, 1
/* 801F0FE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0FEC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0FF0  7D 89 03 A6 */	mtctr r12
/* 801F0FF4  4E 80 04 21 */	bctrl 
lbl_801F0FF8:
/* 801F0FF8  4B E2 3A 35 */	bl mDoExt_removeMesgFont__Fv
/* 801F0FFC  4B E2 3B E1 */	bl mDoExt_removeSubFont__Fv
/* 801F1000  80 7F 00 04 */	lwz r3, 4(r31)
/* 801F1004  28 03 00 00 */	cmplwi r3, 0
/* 801F1008  41 82 00 28 */	beq lbl_801F1030
/* 801F100C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F1010  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F1014  7D 89 03 A6 */	mtctr r12
/* 801F1018  4E 80 04 21 */	bctrl 
/* 801F101C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801F1020  81 83 00 00 */	lwz r12, 0(r3)
/* 801F1024  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F1028  7D 89 03 A6 */	mtctr r12
/* 801F102C  4E 80 04 21 */	bctrl 
lbl_801F1030:
/* 801F1030  39 61 00 20 */	addi r11, r1, 0x20
/* 801F1034  48 17 11 F1 */	bl _restgpr_28
/* 801F1038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F103C  7C 08 03 A6 */	mtlr r0
/* 801F1040  38 21 00 20 */	addi r1, r1, 0x20
/* 801F1044  4E 80 00 20 */	blr 
