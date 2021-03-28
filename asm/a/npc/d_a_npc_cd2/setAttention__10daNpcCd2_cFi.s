lbl_80158420:
/* 80158420  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 80158424  7C 08 02 A6 */	mflr r0
/* 80158428  90 01 01 94 */	stw r0, 0x194(r1)
/* 8015842C  39 61 01 90 */	addi r11, r1, 0x190
/* 80158430  48 20 9D AD */	bl _savegpr_29
/* 80158434  7C 7E 1B 78 */	mr r30, r3
/* 80158438  7C 9D 23 78 */	mr r29, r4
/* 8015843C  3C 60 80 43 */	lis r3, lit_3982@ha
/* 80158440  3B E3 86 10 */	addi r31, r3, lit_3982@l
/* 80158444  88 0D 8A 80 */	lbz r0, data_80451000(r13)
/* 80158448  7C 00 07 75 */	extsb. r0, r0
/* 8015844C  40 82 06 98 */	bne lbl_80158AE4
/* 80158450  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158454  D0 21 01 64 */	stfs f1, 0x164(r1)
/* 80158458  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 8015845C  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 80158460  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 80158464  D0 3F 41 80 */	stfs f1, 0x4180(r31)
/* 80158468  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015846C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80158470  D0 23 00 08 */	stfs f1, 8(r3)
/* 80158474  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158478  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 8015847C  38 BF 40 18 */	addi r5, r31, 0x4018
/* 80158480  48 20 97 A5 */	bl __register_global_object
/* 80158484  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158488  D0 21 01 58 */	stfs f1, 0x158(r1)
/* 8015848C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158490  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80158494  D0 21 01 60 */	stfs f1, 0x160(r1)
/* 80158498  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015849C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 801584A0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801584A4  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 801584A8  38 63 00 0C */	addi r3, r3, 0xc
/* 801584AC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801584B0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801584B4  38 BF 40 24 */	addi r5, r31, 0x4024
/* 801584B8  48 20 97 6D */	bl __register_global_object
/* 801584BC  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801584C0  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 801584C4  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801584C8  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 801584CC  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 801584D0  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801584D4  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 801584D8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801584DC  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 801584E0  38 63 00 18 */	addi r3, r3, 0x18
/* 801584E4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801584E8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801584EC  38 BF 40 30 */	addi r5, r31, 0x4030
/* 801584F0  48 20 97 35 */	bl __register_global_object
/* 801584F4  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801584F8  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 801584FC  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158500  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80158504  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 80158508  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015850C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80158510  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80158514  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80158518  38 63 00 24 */	addi r3, r3, 0x24
/* 8015851C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158520  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158524  38 BF 40 3C */	addi r5, r31, 0x403c
/* 80158528  48 20 96 FD */	bl __register_global_object
/* 8015852C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158530  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 80158534  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158538  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 8015853C  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 80158540  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158544  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80158548  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8015854C  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80158550  38 63 00 30 */	addi r3, r3, 0x30
/* 80158554  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158558  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 8015855C  38 BF 40 48 */	addi r5, r31, 0x4048
/* 80158560  48 20 96 C5 */	bl __register_global_object
/* 80158564  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158568  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 8015856C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158570  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80158574  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 80158578  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015857C  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 80158580  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80158584  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 80158588  38 63 00 3C */	addi r3, r3, 0x3c
/* 8015858C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158590  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158594  38 BF 40 54 */	addi r5, r31, 0x4054
/* 80158598  48 20 96 8D */	bl __register_global_object
/* 8015859C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801585A0  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 801585A4  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801585A8  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 801585AC  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 801585B0  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801585B4  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 801585B8  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 801585BC  D0 23 00 50 */	stfs f1, 0x50(r3)
/* 801585C0  38 63 00 48 */	addi r3, r3, 0x48
/* 801585C4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801585C8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801585CC  38 BF 40 60 */	addi r5, r31, 0x4060
/* 801585D0  48 20 96 55 */	bl __register_global_object
/* 801585D4  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801585D8  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 801585DC  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801585E0  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 801585E4  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 801585E8  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801585EC  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 801585F0  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801585F4  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 801585F8  38 63 00 54 */	addi r3, r3, 0x54
/* 801585FC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158600  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158604  38 BF 40 6C */	addi r5, r31, 0x406c
/* 80158608  48 20 96 1D */	bl __register_global_object
/* 8015860C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158610  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80158614  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158618  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 8015861C  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 80158620  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158624  D0 23 00 60 */	stfs f1, 0x60(r3)
/* 80158628  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 8015862C  D0 23 00 68 */	stfs f1, 0x68(r3)
/* 80158630  38 63 00 60 */	addi r3, r3, 0x60
/* 80158634  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158638  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 8015863C  38 BF 40 78 */	addi r5, r31, 0x4078
/* 80158640  48 20 95 E5 */	bl __register_global_object
/* 80158644  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158648  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 8015864C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158650  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80158654  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 80158658  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015865C  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 80158660  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 80158664  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 80158668  38 63 00 6C */	addi r3, r3, 0x6c
/* 8015866C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158670  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158674  38 BF 40 84 */	addi r5, r31, 0x4084
/* 80158678  48 20 95 AD */	bl __register_global_object
/* 8015867C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158680  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80158684  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158688  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8015868C  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 80158690  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158694  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 80158698  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8015869C  D0 23 00 80 */	stfs f1, 0x80(r3)
/* 801586A0  38 63 00 78 */	addi r3, r3, 0x78
/* 801586A4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801586A8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801586AC  38 BF 40 90 */	addi r5, r31, 0x4090
/* 801586B0  48 20 95 75 */	bl __register_global_object
/* 801586B4  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801586B8  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 801586BC  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801586C0  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 801586C4  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 801586C8  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801586CC  D0 23 00 84 */	stfs f1, 0x84(r3)
/* 801586D0  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 801586D4  D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 801586D8  38 63 00 84 */	addi r3, r3, 0x84
/* 801586DC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801586E0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801586E4  38 BF 40 9C */	addi r5, r31, 0x409c
/* 801586E8  48 20 95 3D */	bl __register_global_object
/* 801586EC  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801586F0  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 801586F4  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801586F8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 801586FC  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80158700  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158704  D0 23 00 90 */	stfs f1, 0x90(r3)
/* 80158708  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 8015870C  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80158710  38 63 00 90 */	addi r3, r3, 0x90
/* 80158714  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158718  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 8015871C  38 BF 40 A8 */	addi r5, r31, 0x40a8
/* 80158720  48 20 95 05 */	bl __register_global_object
/* 80158724  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158728  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 8015872C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158730  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80158734  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80158738  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015873C  D0 23 00 9C */	stfs f1, 0x9c(r3)
/* 80158740  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 80158744  D0 23 00 A4 */	stfs f1, 0xa4(r3)
/* 80158748  38 63 00 9C */	addi r3, r3, 0x9c
/* 8015874C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158750  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158754  38 BF 40 B4 */	addi r5, r31, 0x40b4
/* 80158758  48 20 94 CD */	bl __register_global_object
/* 8015875C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158760  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80158764  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158768  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8015876C  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 80158770  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158774  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80158778  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 8015877C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80158780  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80158784  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158788  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 8015878C  38 BF 40 C0 */	addi r5, r31, 0x40c0
/* 80158790  48 20 94 95 */	bl __register_global_object
/* 80158794  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158798  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8015879C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801587A0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801587A4  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 801587A8  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801587AC  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 801587B0  D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 801587B4  D0 23 00 BC */	stfs f1, 0xbc(r3)
/* 801587B8  38 63 00 B4 */	addi r3, r3, 0xb4
/* 801587BC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801587C0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801587C4  38 BF 40 CC */	addi r5, r31, 0x40cc
/* 801587C8  48 20 94 5D */	bl __register_global_object
/* 801587CC  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801587D0  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 801587D4  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801587D8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801587DC  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 801587E0  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801587E4  D0 23 00 C0 */	stfs f1, 0xc0(r3)
/* 801587E8  D0 03 00 C4 */	stfs f0, 0xc4(r3)
/* 801587EC  D0 23 00 C8 */	stfs f1, 0xc8(r3)
/* 801587F0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 801587F4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801587F8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801587FC  38 BF 40 D8 */	addi r5, r31, 0x40d8
/* 80158800  48 20 94 25 */	bl __register_global_object
/* 80158804  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158808  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8015880C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158810  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80158814  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 80158818  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015881C  D0 23 00 CC */	stfs f1, 0xcc(r3)
/* 80158820  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80158824  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 80158828  38 63 00 CC */	addi r3, r3, 0xcc
/* 8015882C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158830  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158834  38 BF 40 E4 */	addi r5, r31, 0x40e4
/* 80158838  48 20 93 ED */	bl __register_global_object
/* 8015883C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158840  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80158844  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158848  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8015884C  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80158850  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158854  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 80158858  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 8015885C  D0 23 00 E0 */	stfs f1, 0xe0(r3)
/* 80158860  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80158864  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158868  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 8015886C  38 BF 40 F0 */	addi r5, r31, 0x40f0
/* 80158870  48 20 93 B5 */	bl __register_global_object
/* 80158874  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158878  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8015887C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158880  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80158884  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80158888  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015888C  D0 23 00 E4 */	stfs f1, 0xe4(r3)
/* 80158890  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 80158894  D0 23 00 EC */	stfs f1, 0xec(r3)
/* 80158898  38 63 00 E4 */	addi r3, r3, 0xe4
/* 8015889C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801588A0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801588A4  38 BF 40 FC */	addi r5, r31, 0x40fc
/* 801588A8  48 20 93 7D */	bl __register_global_object
/* 801588AC  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801588B0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801588B4  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801588B8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801588BC  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801588C0  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801588C4  D0 23 00 F0 */	stfs f1, 0xf0(r3)
/* 801588C8  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 801588CC  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 801588D0  38 63 00 F0 */	addi r3, r3, 0xf0
/* 801588D4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801588D8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801588DC  38 BF 41 08 */	addi r5, r31, 0x4108
/* 801588E0  48 20 93 45 */	bl __register_global_object
/* 801588E4  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801588E8  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801588EC  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801588F0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801588F4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801588F8  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801588FC  D0 23 00 FC */	stfs f1, 0xfc(r3)
/* 80158900  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80158904  D0 23 01 04 */	stfs f1, 0x104(r3)
/* 80158908  38 63 00 FC */	addi r3, r3, 0xfc
/* 8015890C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158910  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158914  38 BF 41 14 */	addi r5, r31, 0x4114
/* 80158918  48 20 93 0D */	bl __register_global_object
/* 8015891C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158920  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80158924  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158928  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8015892C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80158930  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158934  D0 23 01 08 */	stfs f1, 0x108(r3)
/* 80158938  D0 03 01 0C */	stfs f0, 0x10c(r3)
/* 8015893C  D0 23 01 10 */	stfs f1, 0x110(r3)
/* 80158940  38 63 01 08 */	addi r3, r3, 0x108
/* 80158944  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158948  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 8015894C  38 BF 41 20 */	addi r5, r31, 0x4120
/* 80158950  48 20 92 D5 */	bl __register_global_object
/* 80158954  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158958  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8015895C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158960  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80158964  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80158968  38 7F 41 80 */	addi r3, r31, 0x4180
/* 8015896C  D0 23 01 14 */	stfs f1, 0x114(r3)
/* 80158970  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 80158974  D0 23 01 1C */	stfs f1, 0x11c(r3)
/* 80158978  38 63 01 14 */	addi r3, r3, 0x114
/* 8015897C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158980  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158984  38 BF 41 2C */	addi r5, r31, 0x412c
/* 80158988  48 20 92 9D */	bl __register_global_object
/* 8015898C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158990  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80158994  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158998  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8015899C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801589A0  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801589A4  D0 23 01 20 */	stfs f1, 0x120(r3)
/* 801589A8  D0 03 01 24 */	stfs f0, 0x124(r3)
/* 801589AC  D0 23 01 28 */	stfs f1, 0x128(r3)
/* 801589B0  38 63 01 20 */	addi r3, r3, 0x120
/* 801589B4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801589B8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801589BC  38 BF 41 38 */	addi r5, r31, 0x4138
/* 801589C0  48 20 92 65 */	bl __register_global_object
/* 801589C4  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 801589C8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801589CC  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 801589D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801589D4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801589D8  38 7F 41 80 */	addi r3, r31, 0x4180
/* 801589DC  D0 23 01 2C */	stfs f1, 0x12c(r3)
/* 801589E0  D0 03 01 30 */	stfs f0, 0x130(r3)
/* 801589E4  D0 23 01 34 */	stfs f1, 0x134(r3)
/* 801589E8  38 63 01 2C */	addi r3, r3, 0x12c
/* 801589EC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 801589F0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 801589F4  38 BF 41 44 */	addi r5, r31, 0x4144
/* 801589F8  48 20 92 2D */	bl __register_global_object
/* 801589FC  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158A00  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80158A04  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158A08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80158A0C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80158A10  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158A14  D0 23 01 38 */	stfs f1, 0x138(r3)
/* 80158A18  D0 03 01 3C */	stfs f0, 0x13c(r3)
/* 80158A1C  D0 23 01 40 */	stfs f1, 0x140(r3)
/* 80158A20  38 63 01 38 */	addi r3, r3, 0x138
/* 80158A24  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158A28  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158A2C  38 BF 41 50 */	addi r5, r31, 0x4150
/* 80158A30  48 20 91 F5 */	bl __register_global_object
/* 80158A34  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158A38  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80158A3C  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158A40  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80158A44  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80158A48  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158A4C  D0 23 01 44 */	stfs f1, 0x144(r3)
/* 80158A50  D0 03 01 48 */	stfs f0, 0x148(r3)
/* 80158A54  D0 23 01 4C */	stfs f1, 0x14c(r3)
/* 80158A58  38 63 01 44 */	addi r3, r3, 0x144
/* 80158A5C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158A60  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158A64  38 BF 41 5C */	addi r5, r31, 0x415c
/* 80158A68  48 20 91 BD */	bl __register_global_object
/* 80158A6C  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158A70  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80158A74  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158A78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80158A7C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80158A80  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158A84  D0 23 01 50 */	stfs f1, 0x150(r3)
/* 80158A88  D0 03 01 54 */	stfs f0, 0x154(r3)
/* 80158A8C  D0 23 01 58 */	stfs f1, 0x158(r3)
/* 80158A90  38 63 01 50 */	addi r3, r3, 0x150
/* 80158A94  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158A98  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158A9C  38 BF 41 68 */	addi r5, r31, 0x4168
/* 80158AA0  48 20 91 85 */	bl __register_global_object
/* 80158AA4  C0 22 9A E4 */	lfs f1, lit_4585(r2)
/* 80158AA8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80158AAC  C0 02 9A E8 */	lfs f0, lit_4586(r2)
/* 80158AB0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80158AB4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80158AB8  38 7F 41 80 */	addi r3, r31, 0x4180
/* 80158ABC  D0 23 01 5C */	stfs f1, 0x15c(r3)
/* 80158AC0  D0 03 01 60 */	stfs f0, 0x160(r3)
/* 80158AC4  D0 23 01 64 */	stfs f1, 0x164(r3)
/* 80158AC8  38 63 01 5C */	addi r3, r3, 0x15c
/* 80158ACC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80158AD0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80158AD4  38 BF 41 74 */	addi r5, r31, 0x4174
/* 80158AD8  48 20 91 4D */	bl __register_global_object
/* 80158ADC  38 00 00 01 */	li r0, 1
/* 80158AE0  98 0D 8A 80 */	stb r0, data_80451000(r13)
lbl_80158AE4:
/* 80158AE4  7F C3 F3 78 */	mr r3, r30
/* 80158AE8  4B FF F5 C1 */	bl isM___10daNpcCd2_cFv
/* 80158AEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80158AF0  38 00 00 03 */	li r0, 3
/* 80158AF4  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80158AF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80158AFC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80158B00  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80158B04  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80158B08  7C 63 02 14 */	add r3, r3, r0
/* 80158B0C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80158B10  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80158B14  48 1E D9 9D */	bl PSMTXCopy
/* 80158B18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80158B1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80158B20  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80158B24  38 9F 41 80 */	addi r4, r31, 0x4180
/* 80158B28  7C 84 02 14 */	add r4, r4, r0
/* 80158B2C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80158B30  48 1E E2 3D */	bl PSMTXMultVec
/* 80158B34  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80158B38  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80158B3C  2C 1D 00 10 */	cmpwi r29, 0x10
/* 80158B40  40 80 00 18 */	bge lbl_80158B58
/* 80158B44  38 7F 00 0C */	addi r3, r31, 0xc
/* 80158B48  1C 1D 02 0C */	mulli r0, r29, 0x20c
/* 80158B4C  7C 63 02 14 */	add r3, r3, r0
/* 80158B50  A8 03 01 EC */	lha r0, 0x1ec(r3)
/* 80158B54  48 00 00 14 */	b lbl_80158B68
lbl_80158B58:
/* 80158B58  38 7F 00 0C */	addi r3, r31, 0xc
/* 80158B5C  1C 1D 02 3C */	mulli r0, r29, 0x23c
/* 80158B60  7C 63 02 14 */	add r3, r3, r0
/* 80158B64  A8 03 FF 1C */	lha r0, -0xe4(r3)
lbl_80158B68:
/* 80158B68  7C 00 07 34 */	extsh r0, r0
/* 80158B6C  C8 22 9A F0 */	lfd f1, lit_4588(r2)
/* 80158B70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80158B74  90 01 01 74 */	stw r0, 0x174(r1)
/* 80158B78  3C 00 43 30 */	lis r0, 0x4330
/* 80158B7C  90 01 01 70 */	stw r0, 0x170(r1)
/* 80158B80  C8 01 01 70 */	lfd f0, 0x170(r1)
/* 80158B84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80158B88  EC 22 00 2A */	fadds f1, f2, f0
/* 80158B8C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80158B90  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80158B94  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80158B98  D0 7E 05 58 */	stfs f3, 0x558(r30)
/* 80158B9C  38 60 00 01 */	li r3, 1
/* 80158BA0  39 61 01 90 */	addi r11, r1, 0x190
/* 80158BA4  48 20 96 85 */	bl _restgpr_29
/* 80158BA8  80 01 01 94 */	lwz r0, 0x194(r1)
/* 80158BAC  7C 08 03 A6 */	mtlr r0
/* 80158BB0  38 21 01 90 */	addi r1, r1, 0x190
/* 80158BB4  4E 80 00 20 */	blr 
