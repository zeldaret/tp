/* 8010D9B0 0010A8F0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8010D9B4 0010A8F4  7C 08 02 A6 */ mflr r0
/* 8010D9B8 0010A8F8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010D9BC 0010A8FC  48 00 01 41 */ bl daAlink_c_NS_checkLv4BossRoom
/* 8010D9C0 0010A900  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010D9C4 0010A904  41 82 00 14 */ beq lbl_8010D9D8
/* 8010D9C8 0010A908  3C 60 80 39 */ lis r3, lbl_8038EA30@ha
/* 8010D9CC 0010A90C  38 63 EA 30 */ addi r3, r3, lbl_8038EA30@l
/* 8010D9D0 0010A910  C0 23 00 3C */ lfs f1, 0x3c(r3)
/* 8010D9D4 0010A914  48 00 00 10 */ b lbl_8010D9E4
lbl_8010D9D8:
/* 8010D9D8 0010A918  3C 60 80 39 */ lis r3, lbl_8038EA30@ha
/* 8010D9DC 0010A91C  38 63 EA 30 */ addi r3, r3, lbl_8038EA30@l
/* 8010D9E0 0010A920  C0 23 00 2C */ lfs f1, 0x2c(r3)
lbl_8010D9E4:
/* 8010D9E4 0010A924  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8010D9E8 0010A928  7C 08 03 A6 */ mtlr r0
/* 8010D9EC 0010A92C  38 21 00 10 */ addi r1, r1, 0x10
/* 8010D9F0 0010A930  4E 80 00 20 */ blr